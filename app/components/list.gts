import Component from '@glimmer/component';
// TODO not sure how to fix this TS error yet, is it because there's no typing for v-c?
//@ts-expect-error
import VerticalCollection from '@html-next/vertical-collection/components/vertical-collection/component';

import styles from './list.css';

export interface ListSignature {}
export default class List extends Component<ListSignature> {
  styles = styles;

  data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  constructor(owner: unknown, args: ListSignature) {
    super(owner, args);
    console.log(this.styles);
  }

  <template>
    <div class='{{this.styles.vc}}'>
      <VerticalCollection
        @items={{this.data}}
        @tagName='ul'
        @estimateHeight={{40}}
        as |item i|
      >
        <li>
          {{item}}
          {{i}}
        </li>
      </VerticalCollection>
    </div>
  </template>
}

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    List: typeof List;
  }
}

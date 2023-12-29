import Component from '@glimmer/component';
import Jikan from 'jikan-ga-mada-aru/components/jikan';

export interface WorldSignature {}

export default class World extends Component<WorldSignature> {
  get hi() {
    return 'hello';
  }

  <template>
    <Jikan />
    <strong>{{this.hi}} World</strong>
  </template>
}

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    World: typeof World;
  }
}

import Component from '@glimmer/component';
import { action } from '@ember/object';
import { local } from 'embroider-css-modules';

import styles from './test.css';

export interface TestSignature {
  Args: {
    title?: string;
  };
  // Blocks: {
  //   default: [];
  // };
}
export default class Test extends Component<TestSignature> {
  @action
  world() {}

  get titleWithDefault() {
    return this.args.title ?? 'No avatar title provided';
  }

  /**
   * returns a test string
   */
  get test() {
    console.log(styles);
    return 'hi';
  }

  <template>
    test
    <div
      class='{{local styles "container"}} avatar'
      title={{this.titleWithDefault}}
    >
      {{this.titleWithDefault}}
      {{this.test}}
    </div>
  </template>
}

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    Test: typeof Test;
  }
}

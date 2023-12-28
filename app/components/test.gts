import Component from '@glimmer/component';
import { action } from '@ember/object';
import { local } from 'embroider-css-modules';

import styles from './test.css';

export default class Avatar extends Component {
  @action
  world() {}

  get titleWithDefault() {
    return this.args.title ?? 'No avatar title provided';
  }

  get test() {
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

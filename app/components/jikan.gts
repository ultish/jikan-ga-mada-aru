import Component from '@glimmer/component';

export interface JikanSignature {}
export default class Jikan extends Component<JikanSignature> {
  get aru() {
    return 'nai';
  }

  <template>jikanaru? {{this.aru}}</template>
}

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    Jikan: typeof Jikan;
  }
}

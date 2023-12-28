// // Types for compiled templates
// declare module 'jikan-ga-mada-aru/templates/*' {
//   import { TemplateFactory } from 'ember-cli-htmlbars';

//   const tmpl: TemplateFactory;
//   export default tmpl;
// }

import '@glint/environment-ember-loose';

import type EmbroiderCssModulesRegistry from 'embroider-css-modules/template-registry';
import { HelperLike } from '@glint/template';

// pagetitle is only in thier master branch, not released yet
// import type PageTitle from 'ember-page-title/template-registry';

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry extends EmbroiderCssModulesRegistry {
    /*PageTitle other addon registries */
    // local entries
    'page-title': HelperLike<{
      Args: { Positional: [title: string] };
      Return: void;
    }>;
  }
}

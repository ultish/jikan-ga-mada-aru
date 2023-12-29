import EmberRouter from '@embroider/router';
import config from 'jikan-ga-mada-aru/config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function () {
  this.route('hello');
  this.route('world');
});

import Controller from '@ember/controller';

export default class HelloController extends Controller {
  get iAmController() {
    return 'yes you are';
  }
}

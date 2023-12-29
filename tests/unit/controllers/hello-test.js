import { module, test } from 'qunit';
import { setupTest } from 'jikan-ga-mada-aru/tests/helpers';

module('Unit | Controller | hello', function (hooks) {
  setupTest(hooks);

  // TODO: Replace this with your real tests.
  test('it exists', function (assert) {
    let controller = this.owner.lookup('controller:hello');
    assert.ok(controller);
  });
});

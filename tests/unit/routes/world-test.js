import { module, test } from 'qunit';
import { setupTest } from 'jikan-ga-mada-aru/tests/helpers';

module('Unit | Route | world', function (hooks) {
  setupTest(hooks);

  test('it exists', function (assert) {
    let route = this.owner.lookup('route:world');
    assert.ok(route);
  });
});

/**
 * qunit test
 */
module('Selector', {
    setup: function() {
        this.topLis = $('#selected-plays > li.horizontal');
    }
});

test('Child selectors', function() {
    expect(1);
    equal(this.topLis.length, 3, 'topList have horizontal');
});
test('Attrbute selectors', function() {
    expect(2);
    ok(this.topLis.find('.mailto').length == 1,'a.mailto');
    equal(this.topLis.find('.pdflink').length, 1, 'a.pdflink');
});


module('ajax test case');

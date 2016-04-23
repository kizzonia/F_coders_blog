(function() {
  $(function() {
    return $('textarea.wmd-input').each(function(i, input) {
      var attr, converter, editor, help;
      attr = $(input).attr('id').split('wmd-input')[1];
      converter = new Markdown.Converter();
      Markdown.Extra.init(converter);
      help = {
        handler: function() {
          window.open('http://daringfireball.net/projects/markdown/syntax');
          return false;
        },
        title: "Markdown Editing Help"
      };
      editor = new Markdown.Editor(converter, attr, help);
      return editor.run();
    });
  });

}).call(this);

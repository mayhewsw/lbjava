module Jekyll
  module Tags
    class EmbedCode < Liquid::Block
      include Liquid::StandardFilters

      # The regular expression syntax checker. Start with the language specifier.
      # Follow that by zero or more space separated options that take one of three
      # forms: name, name=value, or name="<quoted list>"
      #
      # <quoted list> is a space-separated list of numbers
      SYNTAX = %r!^([a-zA-Z0-9.+#_-]+)((\s+\w+(=(\w+|"([0-9]+\s)*[0-9]+"))?)*)$!

      def initialize(tag_name, markup, tokens)
        super
        @text = text
      end

      def render(context)
        "<"
      end


    end
  end
end

Liquid::Template.register_tag("embedcode", Jekyll::Tags::EmbedCode)

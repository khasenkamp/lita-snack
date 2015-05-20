module Lita
  module Handlers
    class Snack < Handler
      route(/^(have a snack)/, :snack, command: true, help: {
        'snack' => 'Give Lita a snack!' })

      SNACKS = [
        'Om nom nom!',
        'That is very nice of you!',
        'Oh thanks! Have a cookie yourself!',
        'Thank you very much!',
        'Thanks for the treat!'
      ]

      def snack(response)
        response.reply SNACKS.sample
      end
    end
    Lita.register_handler(Snack)
  end
end

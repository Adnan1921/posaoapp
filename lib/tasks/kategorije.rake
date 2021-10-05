namespace :kategorije do
  desc "Dodavanje kategorija"
  task seed_kategorije: :environment  do
    Kategorijeposlova.create([{
      naziv:'Programer',
      opis: 'Računalni programeri pišu, dopunjuju i održavaju nizove naredbi (zvane program ili softver) koje u logičkom redoslijedu opisuju korake koje računalo mora izvršiti.'
    },
    {
          naziv:'Ljudski resursi (Human Resources) ',
          opis: 'Ljudski resursi su skup ljudi koji čine radnu snagu organizacije, poslovnog sektora, industrije ili privrede. Uži pojam je ljudski kapital, znanje i vještine koje pojedinci zapovijedaju. '
        }])

    p "Dodano #{Kategorijeposlova.count} kategorija"
  end
end
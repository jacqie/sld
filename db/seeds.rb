# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
wr = Word.create(:name => 'głowa')
cat = Category.create(:name =>'anatomia', :description => 'categoria związana z anatomią człowieka')
mean = Meaning.create(:description => 'majtająca się na szyji niby ważna część ciała', :word => wr,:category =>cat )
signLanguage = SignLanguage.create(:acronym => 'PJM', :name => 'Polski Język Migowy', :description => 'taki tak oficjalny jezyk w polszy')
sign = Sign.create(:description => 'slowny opis znaku', :gesturegram => 'gestogram', :xmlDescription => '<xml>pochodzacy z magicznego edytora...</xml>', :renderedFile => 'url/to/file', :signLanguage => signLanguage, :meaning => mean)

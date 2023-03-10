# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(name: 'fashion', password: 'fashionable')

User.create(name: 'John Lennon', email: 'user@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', zip: '', prefecture: '', city: '', street: '', address: '', tel: '', profile: '', activated: true)
User.create(name: 'Monkey.D.Luffy', email: 'luffy@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', zip: '', prefecture: '', city: '', street: '', address: '', tel: '', profile: '', activated: true)
User.create(name: 'Boa Hancock', email: 'snake@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', zip: '', prefecture: '', city: '', street: '', address: '', tel: '', profile: '', activated: true)

Cart.create(user_id: 1)
Cart.create(user_id: 2)
Cart.create(user_id: 3)

WorkCat.create(name: 'トップス')
WorkCat.create(name: 'パンツ')
WorkCat.create(name: 'スカート')
WorkCat.create(name: 'ワンピース・ドレス')
WorkCat.create(name: 'サロペット・オールインワン')
WorkCat.create(name: 'セットアップアイテム')
WorkCat.create(name: 'アウター')
WorkCat.create(name: 'バッグ')
WorkCat.create(name: 'シューズ')
WorkCat.create(name: '帽子')
WorkCat.create(name: 'ファッション小物')
WorkCat.create(name: '財布・小物')
WorkCat.create(name: 'アクセサリー')
WorkCat.create(name: 'ヘアアクセサリー')

Work.create(work_cat_id: 7, title: '「真紅」', price:'259900', text: '素材に〇〇を使い、着心地の良い仕上がりになっています。流行の〇〇スタイルと独自のデザインを織り交ぜ、他の人とは被らない唯一無二のものになっています。', onlyone: '1', status: 'default', image:File.open("./public/image/mid_red.png"))
Work.create(work_cat_id: 7, title: '「群青」', price:'13900', text: '素材に〇〇を使い、着心地の良い仕上がりになっています。流行の〇〇スタイルと独自のデザインを織り交ぜ、他の人とは被らない唯一無二のものになっています。', onlyone: '0', status: 'default', image:File.open("./public/image/mid_blue.png"))
Work.create(work_cat_id: 7, title: '「新緑」', price:'13900', text: '素材に〇〇を使い、着心地の良い仕上がりになっています。流行の〇〇スタイルと独自のデザインを織り交ぜ、他の人とは被らない唯一無二のものになっています。', onlyone: '0', status: 'default', image:File.open("./public/image/mid_green.png"))
Work.create(work_cat_id: 7, title: '「雷鳴」', price:'14900', text: '素材に〇〇を使い、着心地の良い仕上がりになっています。流行の〇〇スタイルと独自のデザインを織り交ぜ、他の人とは被らない唯一無二のものになっています。', onlyone: '0', status: 'default', image:File.open("./public/image/mid_yellow.png"))
Work.create(work_cat_id: 7, title: '「紫蘇」', price:'16900', text: '素材に〇〇を使い、着心地の良い仕上がりになっています。流行の〇〇スタイルと独自のデザインを織り交ぜ、他の人とは被らない唯一無二のものになっています。', onlyone: '0', status: 'default', image:File.open("./public/image/mid_purple.png"))
Work.create(work_cat_id: 7, title: '「山吹」', price:'14900', text: '素材に〇〇を使い、着心地の良い仕上がりになっています。流行の〇〇スタイルと独自のデザインを織り交ぜ、他の人とは被らない唯一無二のものになっています。', onlyone: '0', status: 'default', image:File.open("./public/image/mid_orange.png"))
Work.create(work_cat_id: 7, title: '「桃花」', price:'15900', text: '素材に〇〇を使い、着心地の良い仕上がりになっています。流行の〇〇スタイルと独自のデザインを織り交ぜ、他の人とは被らない唯一無二のものになっています。', onlyone: '0', status: 'default', image:File.open("./public/image/mid_pink.png"))
Work.create(work_cat_id: 7, title: '「漆黒」', price:'10900', text: '素材に〇〇を使い、着心地の良い仕上がりになっています。流行の〇〇スタイルと独自のデザインを織り交ぜ、他の人とは被らない唯一無二のものになっています。', onlyone: '0', status: 'default', image:File.open("./public/image/mid_black.png"))

ArticleCat.create(name: '制作')
ArticleCat.create(name: 'インスピレーション')

Article.create(article_cat_id: 2, image:File.open("./public/image/yugami.jpg"), title: '瀬戸大橋から受けたインスピレーションについて語る', image_title: '瀬戸大橋で偶然撮れた一枚', text: '吾輩わがはいは猫である。名前はまだ無い。 どこで生れたかとんと見当けんとうがつかぬ。何でも薄暗いじめじめした所でニャーニャー泣いていた事だけは記憶している。 吾輩はここで始めて人間というものを見た。しかもあとで聞くとそれは書生という人間中で一番獰悪どうあくな種族であったそうだ。 この書生というのは時々我々を捕つかまえて煮にて食うという話である。しかしその当時は何という考もなかったから別段恐しいとも思わなかった。')
Article.create(article_cat_id: 2, image:File.open("./public/image/mirror.jpg"), title: '衣服づくりと自然現象について徒然と', image_title: '人気の撮影法「鏡面反射」、ファッションにも活かせないか', text: '吾輩わがはいは猫である。名前はまだ無い。 どこで生れたかとんと見当けんとうがつかぬ。何でも薄暗いじめじめした所でニャーニャー泣いていた事だけは記憶している。 吾輩はここで始めて人間というものを見た。しかもあとで聞くとそれは書生という人間中で一番獰悪どうあくな種族であったそうだ。 この書生というのは時々我々を捕つかまえて煮にて食うという話である。しかしその当時は何という考もなかったから別段恐しいとも思わなかった。')
Article.create(article_cat_id: 1, image:File.open("./public/image/monster.png"), title: '「ヤバイ怪物」をテーマに衣服をデザインするまでの工程', image_title: 'AIの描く怪物が面白い', text: '吾輩わがはいは猫である。名前はまだ無い。 どこで生れたかとんと見当けんとうがつかぬ。何でも薄暗いじめじめした所でニャーニャー泣いていた事だけは記憶している。 吾輩はここで始めて人間というものを見た。しかもあとで聞くとそれは書生という人間中で一番獰悪どうあくな種族であったそうだ。 この書生というのは時々我々を捕つかまえて煮にて食うという話である。しかしその当時は何という考もなかったから別段恐しいとも思わなかった。')
Article.create(article_cat_id: 2, image:File.open("./public/image/firebird.png"), title: '手塚治虫の名作「火の鳥」を読んで考えたこと', image_title: '幻想的な火の鳥のイメージ', text: '吾輩わがはいは猫である。名前はまだ無い。 どこで生れたかとんと見当けんとうがつかぬ。何でも薄暗いじめじめした所でニャーニャー泣いていた事だけは記憶している。 吾輩はここで始めて人間というものを見た。しかもあとで聞くとそれは書生という人間中で一番獰悪どうあくな種族であったそうだ。 この書生というのは時々我々を捕つかまえて煮にて食うという話である。しかしその当時は何という考もなかったから別段恐しいとも思わなかった。')

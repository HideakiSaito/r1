# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
Food.create([
  {name:"いつもの。ご飯、チキントマト、ブロッコリー、アボカド",
   diet_id: 1,
   calorie: 0,
   carbohydrate: 60,
   fat: 20,
   protein: 40,
   vegetable: 100,
   diet_memo: "これを基本的には食べる"
  },
  {name:"いつもの。ご飯少し、チキントマト、ブロッコリー、アボカド",
   diet_id: 1,
   calorie: 0,
   carbohydrate: 40,
   fat: 20,
   protein: 40,
   vegetable: 100,
   diet_memo: "これを基本的には食べる"
  },
  {name:"コーヒー、ブロッコリー、アボカド",
   diet_id: 1,
   calorie: 0,
   carbohydrate: 0,
   fat: 0,
   protein: 20,
   vegetable: 100,
   diet_memo: "減量時には朝これ。"
  }
  ])



Condition.create([
  {name:"絶好調",score:90,memo:""},
  {name:"良好",score:90,memo:""},
  {name:"ちょっと眠い",score:70,memo:""},
  {name:"かなり眠い",score:60,memo:""},
  {name:"筋肉痛ちょっと",score:70,memo:""},
  {name:"筋肉痛ちょっと&少し眠い",score:60,memo:""},
  {name:"筋肉痛ちょっと&かなり眠い",score:50,memo:""},
  {name:"筋肉痛かなり",score:50,memo:""},
  {name:"筋肉痛かなり&少し眠い",score:40,memo:""},
  {name:"筋肉痛かなり&かなり眠い",score:30,memo:""},
  {name:"風邪",score:20,memo:""},
  {name:"倒れそう",score:10,memo:""},
  {name:"etc",score:0,memo:""}
])

Feeling.create([
  {name:"気分最高",score:100,memo:""},
  {name:"良好",score:80,memo:""},
  {name:"普通",score:60,memo:""},
  {name:"よくない",score:40,memo:""},
  {name:"最低",score:20,memo:""},
  {name:"etc",score:0,memo:""}
])

Part.create([
    {name: "胸"},
    {name: "背中(上)"},
    {name: "背中(下)"},
    {name: "下半身"},
    {name: "臀部"},
    {name: "大腿四頭筋"},
    {name: "ハムストリング"},
    {name: "カーフ"},
    {name: "肩（前）"},
    {name: "肩（中）"},
    {name: "肩（後）"},
    {name: "上腕二頭筋"},
    {name: "上腕三頭筋"},
    {name: "前腕"},
    {name: "腹筋（前）"},
    {name: "腹筋（横）"},
    {name: "有酸素運動"},
    {name: "ストレッチ"}
])

Equipment.create([
  {name: "バーベル"},
  {name: "ダンベル"},
  {name: "ケーブル"},
  {name: "マシン"},
  {name: "自重"}
])

Mode.create ([
  {name: "リバースピラミッド", detail: "6-8rep 10 12"},
  {name: "ドロップセット", detail: "すぐに１５％ウェイトを落として続ける。３ドロップまで"},
  {name: "パーシャルセット", detail: "次のレップスで限界な時に、できる可動域で行う"},
  {name: "5 by 5", detail: "5reps x 5Set"},
  {name: "ジャーマン風セット", detail: "8reps x 6set..."},
  {name: "トラディショナル", detail: "10reps x 3Set"}
])

Item.create ([
  {name: "ベンチプレス", reps: 8, part_id: 1 , mode_id: 1, equipment_id: 1},
  {name: "インクラインダンベルベンチプレス", reps: 8, part_id: 1 , mode_id: 1, equipment_id: 2},
  {name: "ケーブルクロスオーバー", reps: 12, part_id: 1 , mode_id: 2, equipment_id: 3},
  {name: "ハーフデッドリフト", reps: 8, part_id: 3 , mode_id: 1, equipment_id: 1},
  {name: "プルアップ", reps: 8, part_id: 2 , mode_id: 1, equipment_id: 4},
  {name: "チンアップ", reps: 8, part_id: 2 , mode_id: 1, equipment_id: 4},
  {name: "ケーブルローイング", reps: 8, part_id: 3 , mode_id: 1, equipment_id: 3},
  {name: "ワンハンドローイング", reps: 8, part_id: 2 , mode_id: 1, equipment_id: 2},
  {name: "バーベルスクワット", reps: 8, part_id: 4 , mode_id: 1, equipment_id: 1},
  {name: "自重スクワット", reps: 8, part_id: 4 , mode_id: 1, equipment_id: 5}
])

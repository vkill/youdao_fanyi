#encoding: utf-8

require "pp"
$:.push File.expand_path("../../lib", __FILE__)
require "youdao_fanyi"

YoudaoFanyi.configure do |config|
  config.api_keys = [
    { "keyfrom" => "blog-vkill-net", "key" => "2022446265" }
  ]
end

puts YoudaoFanyi.t("china")
puts "======================================="

YoudaoFanyi::Translator.translate("中国", "china", :i, nil, true, false, "") do |results|
  p [results.error_code, results.translation, results.query]
  pp results.results
  puts "======================================="
end



=begin

[root@vkill-arch youdao_fanyi]# ruby examples/translate.rb
中国
=======================================
[0, "China", "中国"]
{"translation"=>["China"],
 "basic"=>{"explains"=>["China"]},
 "query"=>"中国",
 "errorCode"=>0,
 "web"=>
  [{"value"=>["china", "C.h.i.n.a", "cn", "Chung Kuo, Cina"], "key"=>"中国"},
   {"value"=>["中国"], "key"=>"中國"},
   {"value"=>["China Daily", "China News", "Dhina Daily", "Chellona Daily"],
    "key"=>"中国日报"},
   {"value"=>
     ["Great Wall, China",
      "Great all, Chna",
      "the Great Wall of China",
      "GreatWallChina"],
    "key"=>"中国长城"},
   {"value"=>["China Unicom", "CHU", "WCDMA", "Unicom"], "key"=>"中国联通"},
   {"value"=>
     ["Red Cross Society of China",
      "RCSC",
      "Red Cro Society of China",
      "Chinese Red Cross Society"],
    "key"=>"中国红十字会"},
   {"value"=>
     ["Mainland China", "cn", "the Chinese mainland", "China Mainland"],
    "key"=>"中国大陆"},
   {"value"=>["Chinaren", "Chinese people", "The Chinese", "Chinese person"],
    "key"=>"中国人"},
   {"value"=>
     ["Chinese Literature", "Chinese play", "CHI.LIT", "Chinese novelist"],
    "key"=>"中国文学"},
   {"value"=>["China News", "Chugoku Shimbun", "CCTV NEWS", "News of China"],
    "key"=>"中国新闻"}]}
=======================================
[0, "中国", "china"]
{"translation"=>["中国"],
 "basic"=>{"phonetic"=>"'tʃainə", "explains"=>["n. 瓷器", "adj. 瓷制的"]},
 "query"=>"china",
 "errorCode"=>0,
 "web"=>
  [{"value"=>["中国", "国际集成电路研讨会暨展览会", "安世亚太", "中华"], "key"=>"China"},
   {"value"=>["中国日报", "中国日报社", "中国日报英文版", "中国报"], "key"=>"China Daily"},
   {"value"=>["中国移动", "中国移动通信公司", "中国移动通信", "神州移动"], "key"=>"China Mobile"},
   {"value"=>["周年", "瓷婚", "搪瓷婚", "瓷器婚"], "key"=>"China Wedding"},
   {"value"=>["月季", "月季花", "中国玫瑰", "扶桑"], "key"=>"China rose"},
   {"value"=>["中国新闻", "中国日报", "新闻", "中国"], "key"=>"China News"},
   {"value"=>["中国报道", "中国述评"], "key"=>"China Report"},
   {"value"=>["中国网通", "神州网通", "中国网通集团", "中国网通集团公司"], "key"=>"China Netcom"},
   {"value"=>["中国各地", "各地"], "key"=>"Around China"},
   {"value"=>["美丽中国", "锦绣中华", "野性中国", "纪录片"], "key"=>"Wild China"}]}
=======================================
[0, "我", "i"]
{"translation"=>["我"],
 "basic"=>{"phonetic"=>"ai", "explains"=>["pron. 我", "n. 碘元素；英语字母I"]},
 "query"=>"i",
 "errorCode"=>0,
 "web"=>
  [{"value"=>["输入", "保单险", "所得税", "I"], "key"=>"I"},
   {"value"=>["我明白", "我明白了", "我知道", "知道了"], "key"=>"I see"},
   {"value"=>["工字梁", "工形梁"], "key"=>"I beam"},
   {"value"=>["位输入", "输出恢复时间"], "key"=>"bit I"},
   {"value"=>["有里知花", "我哭泣", "罗百吉", "我哭了"], "key"=>"i cry"},
   {"value"=>["伊丽莎白一世", "伊莉莎白一世", "伊莉莎白女王", "伊利莎白一世"], "key"=>"Elizabeth I"},
   {"value"=>["张力尹", "我愿意", "张力尹星愿", "我将要"], "key"=>"I Will"},
   {"value"=>["学习精要", "模拟试卷及详解考试", "第一级", "考试"], "key"=>"Level I"},
   {"value"=>["Samsung", "Samsung I8000 Omnia II", "Anycall"], "key"=>"三星I"},
   {"value"=>["我认为", "我思故我在", "我想", "双子座"], "key"=>"I think"}]}
=======================================
[0, "零", "nil"]
{"translation"=>["零"],
 "basic"=>{"phonetic"=>"nil", "explains"=>["n. 无，零"]},
 "query"=>"nil",
 "errorCode"=>0,
 "web"=>
  [{"value"=>["无", "近等基因系", "零点", "尼尔"], "key"=>"nil"},
   {"value"=>["牵牛花", "大花牵牛"], "key"=>"Pharbitis nil"},
   {"value"=>["幂零根基"], "key"=>"nil radical"},
   {"value"=>["零耦合"], "key"=>"Nil Coupling"},
   {"value"=>["给自己", "给本身", "给本人"], "key"=>"guoL niL"},
   {"value"=>["非零溶解度"], "key"=>"nil solubility"},
   {"value"=>["吉理曼"], "key"=>"Nil Guillemette"},
   {"value"=>["尼尔酒店"], "key"=>"nil hotel"},
   {"value"=>["硬摇滚"], "key"=>"T  nil"},
   {"value"=>["无货"], "key"=>"Cargo NIL"}]}
=======================================
[0, "真正的", "true"]
{"translation"=>["真正的"],
 "basic"=>
  {"phonetic"=>"tru:",
   "explains"=>["adj. 真实的；正确的", "adv. 真实地；准确地", "n. 真实；准确", "vt. 装准"]},
 "query"=>"true",
 "errorCode"=>0,
 "web"=>
  [{"value"=>["真", "真实的", "校准", "真正的"], "key"=>"True"},
   {"value"=>["真爱如血", "噬血真爱", "嗜血真爱", "第一季"], "key"=>"True Blood"},
   {"value"=>["真地平", "真地平线", "真水平线", "真实水平"], "key"=>"true horizon"},
   {"value"=>["真正的美", "真实之美", "真善美", "美丽审判"], "key"=>"True Beauty"},
   {"value"=>["有效", "适用"], "key"=>"hold true"},
   {"value"=>["真北", "正北", "真实北国", "真实北向"], "key"=>"TRUE NORTH"},
   {"value"=>["苏乞儿"], "key"=>"True Legend"},
   {"value"=>["位置度", "真位", "真船位", "真正位置的孔"], "key"=>"true position"},
   {"value"=>["本来面目", "本色", "真向", "英雄正传"], "key"=>"true colours"},
   {"value"=>["真实租赁", "正式租赁", "真事租赁"], "key"=>"true lease"}]}
=======================================
[0, "假", "false"]
{"translation"=>["假"],
 "basic"=>{"phonetic"=>"fɔ:ls", "explains"=>["adj. 错误的；虚伪的；伪造的", "adv. 欺诈地"]},
 "query"=>"false",
 "errorCode"=>0,
 "web"=>
  [{"value"=>["错误", "假的", "虚假的", "不成立"], "key"=>"False"},
   {"value"=>["假阴性", "伪阴性", "负误识", "错误否定"], "key"=>"False negative"},
   {"value"=>["假阳性", "伪阳性", "正误识", "错误肯定"], "key"=>"False positive"},
   {"value"=>["假市", "虚假市场"], "key"=>"false market"},
   {"value"=>["假睫毛"], "key"=>"false eyelash"},
   {"value"=>["骗人的外表", "假面具", "装饰正面", "假锋"], "key"=>"false front"},
   {"value"=>["一种形式的试题"], "key"=>"false Exam"},
   {"value"=>["假紫晶"], "key"=>"false amethyst"},
   {"value"=>["假年轮", "伪年轮"], "key"=>"false ring"},
   {"value"=>["假天花板", "假平顶", "假顶棚", "假天华板"], "key"=>"false ceiling"}]}
=======================================
[0, "零", "nil"]
{"translation"=>["零"],
 "basic"=>{"phonetic"=>"nil", "explains"=>["n. 无，零"]},
 "query"=>"nil",
 "errorCode"=>0,
 "web"=>
  [{"value"=>["无", "近等基因系", "零点", "尼尔"], "key"=>"nil"},
   {"value"=>["牵牛花", "大花牵牛"], "key"=>"Pharbitis nil"},
   {"value"=>["幂零根基"], "key"=>"nil radical"},
   {"value"=>["零耦合"], "key"=>"Nil Coupling"},
   {"value"=>["给自己", "给本身", "给本人"], "key"=>"guoL niL"},
   {"value"=>["非零溶解度"], "key"=>"nil solubility"},
   {"value"=>["吉理曼"], "key"=>"Nil Guillemette"},
   {"value"=>["尼尔酒店"], "key"=>"nil hotel"},
   {"value"=>["硬摇滚"], "key"=>"T  nil"},
   {"value"=>["无货"], "key"=>"Cargo NIL"}]}
=======================================


=end


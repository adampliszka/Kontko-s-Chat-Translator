local KontkosTranslator = {}
maxMessages = 20
KontkosTranslator.savedMessages = {}

KontkosTranslator.vars = nil

-- onomatopeje

translations = {
    ["усиление"] = "buff",
    ["ослабление"] = "debuff",
    ["восстановление"] = "restore",
    ["восстановить"] = "restore",
    ["забыть"] = "forget",

    ["следующий"] = "next",
    ["предыдущий"] = "previous",
    ["вперед"] = "forward",
    ["назад"] = "backward",

    ["танк"] = "tank",
    ["дд"] = "dd",
    ["хил"] = "heal",
    ["предмет"] = "item",
    ["обменяться"] = "trade",
    ["давайте"] = "let's go",
    ["собрать"] = "collect",
    ["сильный"] = "strong",
    ["слабый"] = "weak",
    ["медленный"] = "slow",
    ["быстрый"] = "fast",
    ["осторожный"] = "careful",
    ["умный"] = "smart",
    ["глупый"] = "stupid",
    ["долгий"] = "long",
    ["короткий"] = "short",
    ["тяжелый"] = "heavy",
    ["легкий"] = "light",
    ["низкий"] = "low",
    ["узкий"] = "narrow",

    ["урон"] = "damage",
    ["квест"] = "quest",
    ["Альтмер"] = "Altmer",
    ["Бретон"] = "Breton",
    ["Редгард"] = "Redguard",
    ["Имперец"] = "Imperial",
    ["Орк"] = "Orc",
    ["Нордец"] = "Nord",
    ["Дунмер"] = "Dunmer",
    ["Хаджит"] = "Khajiit",
    ["Аргонианец"] = "Argonian",
    ["Эльф"] = "elf",
    ["Лесной"] = "wood",
    ["Темный"] = "dark",
    ["Маг"] = "mage",
    ["Воин"] = "warrior",
    ["Вор"] = "thief",
    ["Стражник"] = "guard",
    ["Путешественник"] = "traveler",
    ["Кузнец"] = "blacksmith",
    ["Торговец"] = "merchant",
    ["Охотник"] = "hunter",
    ["Медведь"] = "bear",
    ["Волк"] = "wolf",
    ["Лев"] = "lion",
    ["Дракон"] = "dragon",

    ["телепортация"] = "teleportation",
    ["магия"] = "magic",
    ["заклинание"] = "spell",
    ["зельеварение"] = "alchemy",
    ["приключенец"] = "adventurer",
    ["древесина"] = "wood",
    ["древесный"] = "wooden",
    ["mагика"] = "magicka",
    ["мир"] = "world",
    ["свет"] = "light",
    ["тень"] = "shadow",
    ["древо"] = "tree",
    ["путь"] = "path",
    ["Выносливость"] = "stamina",
    ["долина"] = "valley",
    ["горы"] = "mountains",
    ["река"] = "river",
    ["озеро"] = "lake",
    ["остров"] = "island",
    ["подземелье"] = "dungeon",
    ["монстр"] = "monster",
    ["задание"] = "quest",
    ["сокровище"] = "treasure",
    ["сила"] = "power",
    ["пещера"] = "cave",
    ["древний"] = "ancient",
    ["артефакт"] = "artifact",
    ["оружие"] = "weapon",
    ["защита"] = "defense",
    ["приключение"] = "adventure",
    ["союзник"] = "ally",
    ["враг"] = "enemy",
    ["сражение"] = "battle",
    ["победа"] = "victory",
    ["поражение"] = "defeat",
    ["зелье"] = "potion",
    ["загадка"] = "riddle",
    ["силач"] = "strongman",
    ["ловкость"] = "agility",
    ["интеллект"] = "intellect",
    ["мудрость"] = "wisdom",
    ["хитрость"] = "cunning",
    ["долг"] = "debt",
    ["план"] = "plan",
    ["боссом"] = "boss",

    ["пожалуйста"] = "please",
    ["спасибо"] = "thank you",
    ["привет"] = "hello",
    ["хорошо"] = "good",
    ["плохо"] = "bad",
    ["извините"] = "sorry",
    ["можно"] = "can",
    ["нельзя"] = "cannot",
    ["помогите"] = "help",
    ["иногда"] = "sometimes",
    ["возможно"] = "maybe",
    ["позже"] = "later",
    ["утро"] = "morning",
    ["удачи"] = "good luck",
    ["и"] = "and",
    ["в"] = "in",
    ["не"] = "not",
    ["на"] = "on",
    ["я"] = "I",
    ["он"] = "he",
    ["что"] = "what",
    ["с"] = "with",
    ["это"] = "this",
    ["быть"] = "be",
    ["а"] = "but",
    ["весь"] = "all",
    ["они"] = "they",
    ["она"] = "she",
    ["как"] = "how",
    ["мы"] = "we",
    ["к"] = "to",
    ["у"] = "by",
    ["вы"] = "you",
    ["этот"] = "this",
    ["за"] = "for",
    ["тот"] = "that",
    ["но"] = "but",
    ["ты"] = "you",
    ["по"] = "along",
    ["из"] = "from",
    ["о"] = "about",
    ["свой"] = "one's own",
    ["так"] = "so",
    ["один"] = "one",
    ["вот"] = "here",
    ["который"] = "which",
    ["наш"] = "our",
    ["только"] = "only",
    ["ещё"] = "still",
    ["от"] = "from",
    ["такой"] = "such",
    ["мочь"] = "be able",
    ["говорить"] = "speak",
    ["для"] = "for",
    ["уже"] = "already",
    ["знать"] = "know",
    ["да"] = "yes",
    ["какой"] = "what kind of",
    ["когда"] = "when",
    ["другой"] = "other",
    ["первый"] = "first",
    ["чтобы"] = "in order to",
    ["его"] = "his",
    ["год"] = "year",
    ["кто"] = "who",
    ["дело"] = "matter",
    ["нет"] = "no",
    ["её"] = "her",
    ["очень"] = "very",
    ["большой"] = "big",
    ["новый"] = "new",
    ["становиться"] = "become",
    ["работа"] = "work",
    ["сейчас"] = "now",
    ["время"] = "time",
    ["человек"] = "person",
    ["идти"] = "go",
    ["если"] = "if",
    ["два"] = "two",
    ["мой"] = "my",
    ["жизнь"] = "life",
    ["до"] = "up to",
    ["где"] = "where",
    ["каждый"] = "each",
    ["самый"] = "most",
    ["хотеть"] = "want",
    ["здесь"] = "here",
    ["надо"] = "it is necessary",
    ["люди"] = "people",
    ["теперь"] = "now",
    ["дом"] = "house",
    ["раз"] = "once",
    ["день"] = "day",
    ["или"] = "or",
    ["город"] = "city",
    ["там"] = "there",
    ["слово"] = "word",
    ["глаз"] = "eye",
    ["потом"] = "then",
    ["видеть"] = "see",
    ["их"] = "their",
    ["под"] = "under",
    ["даже"] = "even",
    ["думать"] = "think",
    ["хорошо"] = "good",
    ["тут"] = "here",
    ["тысяча"] = "thousand",
    ["ли"] = "whether",
    ["вода"] = "water",
    ["ничто"] = "nothing",
    ["много"] = "many",
    ["рука"] = "hand",
    ["себя"] = "self",
    ["молодой"] = "young",
    ["тоже"] = "too",
    ["спрашивать"] = "ask",
    ["без"] = "without",
    ["делать"] = "do",
    ["три"] = "three",
    ["всё"] = "all",
    ["то"] = "that",
    ["жить"] = "live",
    ["труд"] = "work",
    ["сам"] = "self",
    ["хороший"] = "good",
    ["второй"] = "second",
    ["через"] = "across",
    ["место"] = "place",
    ["после"] = "after",
    ["страна"] = "country",
    ["двадцать"] = "twenty",
    ["должен"] = "must",
    ["больше"] = "more",
    ["ваш"] = "your",
    ["дверь"] = "door",
    ["друг"] = "friend",
    ["машина"] = "car",
    ["комната"] = "room",
    ["учиться"] = "study",
    ["над"] = "above",
    ["голова"] = "head",
    ["почему"] = "why",
    ["земля"] = "earth",
    ["стол"] = "table",
    ["давать"] = "give",
    ["перед"] = "before",
    ["тогда"] = "then",
    ["сидеть"] = "sit",
    ["мальчик"] = "boy",
    ["девушка"] = "girl",
    ["лето"] = "summer",
    ["сегодня"] = "today",
    ["сторона"] = "side",
    ["совсем"] = "completely",
    ["маленький"] = "small",
    ["несколько"] = "a few",
    ["вдруг"] = "suddenly",
    ["лицо"] = "face",
    ["конечно"] = "of course",
    ["народ"] = "people",
    ["начинать"] = "begin",
    ["пять"] = "five",
    ["ведь"] = "you know",
    ["вопрос"] = "question",
    ["писать"] = "write",
    ["письмо"] = "letter",
    ["при"] = "at",
    ["мать"] = "mother",
    ["нужно"] = "necessary",
    ["смотреть"] = "watch",
    ["сила"] = "strength",
    ["вместе"] = "together",
    ["выходить"] = "exit",
    ["любить"] = "love",
    ["дорога"] = "road",
    ["старый"] = "old",
    ["улица"] = "street",
    ["решать"] = "decide",
    ["книга"] = "book",
    ["всегда"] = "always",
    ["голос"] = "voice",
    ["значить"] = "mean",
    ["сразу"] = "immediately",
    ["лишь"] = "only",
    ["минута"] = "minute",
    ["снова"] = "again",
    ["окно"] = "window",
    ["бы"] = "would",
    ["уходить"] = "leave",
    ["девятьсот"] = "nine hundred",
    ["последний"] = "last",
    ["проходить"] = "pass",
    ["отец"] = "father",
    ["час"] = "hour",
    ["просто"] = "simply",
    ["видеть"] = "see",
    ["же"] = "emphasizing",
    ["третий"] = "third",
    ["потому"] = "because",
    ["никто"] = "nobody",
    ["ждать"] = "wait",
    ["сколько"] = "how many",
    ["высокий"] = "tall",
    ["лучше"] = "better",
    ["получать"] = "receive",
    ["почти"] = "almost",
    ["лес"] = "forest",
    ["конец"] = "end",
    ["нога"] = "leg",
    ["собственный"] = "own",
    ["сто"] = "hundred",
    ["художник"] = "artist",
    ["четыре"] = "four",
    ["пока"] = "bye",
    ["слушать"] = "listen",
    ["путь"] = "way",
    ["белый"] = "white",
    ["республика"] = "republic",
    ["быстро"] = "quickly",
    ["куда"] = "where",
    ["главный"] = "main",
    ["дети"] = "children",
    ["рассказывать"] = "tell",
    ["совет"] = "advice",
    ["газета"] = "newspaper",
    ["понимать"] = "understand",
    ["пора"] = "time",
    ["твой"] = "your",
    ["бывать"] = "be",
    ["находить"] = "find",
    ["песня"] = "song",
    ["имя"] = "name",
    ["партия"] = "party",
    ["вечер"] = "evening",
    ["опять"] = "again",
    ["иметь"] = "have",
    ["между"] = "between",
    ["настоящий"] = "real",
    ["план"] = "plan",
    ["правда"] = "truth",
    ["сорок"] = "forty",
    ["ходить"] = "walk",
    ["узнавать"] = "recognize",
    ["поле"] = "field",
    ["ночь"] = "night",
    ["входить"] = "enter",
    ["красный"] = "red",
    ["более"] = "more",
    ["урок"] = "lesson",
    ["тело"] = "body",
    ["рядом"] = "near",
    ["лежать"] = "lie",
    ["про"] = "about",
    ["интересный"] = "interesting",
    ["никогда"] = "never",
    ["район"] = "area",
    ["нужный"] = "necessary",
    ["особенно"] = "especially",
    ["отвечать"] = "answer",
    ["начальник"] = "boss",
    ["разный"] = "different",
    ["тридцать"] = "thirty",
    ["десять"] = "ten",
    ["мир"] = "world",
    ["картина"] = "picture",
    ["комитет"] = "committee",
    ["мысль"] = "thought",
    ["гость"] = "guest",
    ["старший"] = "older",
    ["вид"] = "view",
    ["среди"] = "among",
    ["случай"] = "case",
    ["народный"] = "people's",
    ["помнить"] = "remember",
    ["просить"] = "ask",
    ["пусть"] = "let",
    ["разговор"] = "conversation",
    ["двор"] = "yard",
    ["долго"] = "for a long time",
    ["месяц"] = "month",
    ["возвращаться"] = "return",
    ["союз"] = "union",
    ["война"] = "war",
    ["хотя"] = "although",
    ["берег"] = "shore",
    ["целый"] = "whole",
    ["группа"] = "group",
    ["скоро"] = "soon",
    ["студент"] = "student",
    ["товарищ"] = "comrade",
    ["часть"] = "part",
    ["спать"] = "sleep",
    ["полный"] = "full",
    ["сюда"] = "this way",
    ["приезжать"] = "arrive",
    ["оно"] = "it",
    ["женщина"] = "woman",
    ["собрание"] = "meeting",
    ["подходить"] = "approach",
    ["дерево"] = "tree",
    ["сад"] = "garden",
    ["чуть"] = "hardly",
    ["бояться"] = "fear",
    ["заниматься"] = "engage",
    ["папа"] = "dad",
    ["помощь"] = "help",
    ["прошлый"] = "past",
    ["прямо"] = "straight",
    ["лучший"] = "best",
    ["мастер"] = "master",
    ["секретарь"] = "secretary",
    ["стена"] = "wall",
    ["оказываться"] = "turn out",
    ["сын"] = "son",
    ["брат"] = "brother",
    ["зачем"] = "why",
    ["играть"] = "play",
    ["институт"] = "institute",
    ["пятый"] = "fifth",
    ["раньше"] = "earlier",
    ["тихо"] = "quietly",
    ["чёрный"] = "black",
    ["великий"] = "great",
    ["завтра"] = "tomorrow",
    ["широкий"] = "wide",
    ["мало"] = "few",
    ["наконец"] = "finally",
    ["плечо"] = "shoulder",
    ["разве"] = "really",
    ["разве не"] = "surely",
    ["снег"] = "snow",
    ["будущий"] = "future",
    ["сердце"] = "heart",
    ["трудно"] = "difficult",
    ["язык"] = "language",
    ["приходить"] = "come",
    ["русский"] = "Russian",
    ["недавно"] = "recently",
    ["советский"] = "Soviet",
    ["некоторый"] = "certain",
    ["продолжать"] = "continue",
    ["плавать"] = "swim",
    ["синий"] = "blue",
    ["поэтому"] = "therefore",
    ["сладкий"] = "sweet",
    ["иностранный"] = "foreign",
    ["среда"] = "Wednesday",
    ["глубокий"] = "deep",
    ["использовать"] = "use",
    ["единственный"] = "only",
    ["конкуренция"] = "competition",
    ["испытание"] = "trial"
}

local function levenshtein(a, b)
    local la = #a
    local lb = #b
    local d = {}

    for i = 0, la do
        d[i] = {}
        d[i][0] = i
    end
    for j = 0, lb do
        d[0][j] = j
    end

    for i = 1, la do
        for j = 1, lb do
            local cost = (a:sub(i, i) == b:sub(j, j)) and 0 or 1
            d[i][j] = math.min(
                d[i-1][j] + 1,
                d[i][j-1] + 1,
                d[i-1][j-1] + cost
            )
        end
    end

    return d[la][lb]
end

local function normalizeWord(word)
    if string.match(word, "у́сь$") then
        return string.sub(word, 1, #word - 3)
    elseif string.match(word, "ю$") then
        return string.sub(word, 1, #word - 1)
    elseif string.match(word, "ет$") then
        return string.sub(word, 1, #word - 2)
    elseif string.match(word, "ит$") then
        return string.sub(word, 1, #word - 2)
    elseif string.match(word, "ем$") then
        return string.sub(word, 1, #word - 2)
    elseif string.match(word, "ете$") then
        return string.sub(word, 1, #word - 3)
    elseif string.match(word, "ишь$") then
        return string.sub(word, 1, #word - 3)
    elseif string.match(word, "ю́т$") then
        return string.sub(word, 1, #word - 3)
    elseif string.match(word, "ла$") then
        return string.sub(word, 1, #word - 2)
    elseif string.match(word, "л$") then
        return string.sub(word, 1, #word - 1)

    elseif string.match(word, "ы$") then
        return string.sub(word, 1, #word - 1)
    elseif string.match(word, "и$") then
        return string.sub(word, 1, #word - 1)
    elseif string.match(word, "е$") then
        return string.sub(word, 1, #word - 1)
    elseif string.match(word, "ом$") then
        return string.sub(word, 1, #word - 2)

    elseif string.match(word, "ая$") then
        return string.sub(word, 1, #word - 2)
    elseif string.match(word, "ий$") then
        return string.sub(word, 1, #word - 2)
    elseif string.match(word, "ое$") then
        return string.sub(word, 1, #word - 2)
    elseif string.match(word, "ые$") then
        return string.sub(word, 1, #word - 2)

    elseif string.match(word, "чик$") then
        return string.sub(word, 1, #word - 4)
    elseif string.match(word, "очка$") then
        return string.sub(word, 1, #word - 4)
    elseif string.match(word, "енька$") then
        return string.sub(word, 1, #word - 5)

    end

    return word
end

local function fuzzyMatch(word)
    local closestMatch = nil
    local minDistance = math.huge

    for dictWord, _ in pairs(translations) do
        local dist = levenshtein(word, dictWord)
        if dist < minDistance then
            closestMatch = dictWord
            minDistance = dist
        end
    end

    if minDistance > 4 then
        return nil
    end

    return closestMatch
end

local function OnChatMessage(eventCode, channelType, fromName, text, isCustomerService, fromDisplayName)
    -- -- Check if the message is from a player and not a system message
    -- if fromName == "" or fromName == "System" then
    --     return
    -- end
    -- -- Check if the message is a translation request
    -- if string.find(text, "/tr") then
    --     d("[Translator] Translation request detected. Ignoring message.")
    --     return
    -- end
    -- Check if the message is empty or contains only whitespace
    if string.match(text, "^%s*$") then
        -- d("[Translator] Empty message. Ignoring.")
        return
    end

    table.insert(KontkosTranslator.savedMessages, text)
    if #KontkosTranslator.savedMessages > maxMessages then
        table.remove(KontkosTranslator.savedMessages, 1)
    end
end

local function Translate(text)
    local offset = tonumber(text) or 0
    local count = #KontkosTranslator.savedMessages

    if offset < 0 then
        d("[Translator] Invalid offset: please provide a non-negative number.")
        return
    end

    if count == 0 then
        d("[Kontko's Chat Translator] No messages to translate.")
        return
    end

    local index = count - offset
    if index < 1 or index > count then
        d(string.format("[Kontko's Chat Translator] Invalid offset: only %d messages available.", count))
        return
    end

    local message = KontkosTranslator.savedMessages[index]
    d(string.format("[Kontko's Chat Translator] Translating message #%d: %s", offset, message))

    local translatedMessage = ""
    for word in string.gmatch(message, "%S+") do
        local baseWord = normalizeWord(word)
        if translations[baseWord] then
            translatedMessage = translatedMessage .. " " .. translations[baseWord]
        else
            local closestMatch = fuzzyMatch(baseWord)
            if closestMatch then
                translatedMessage = translatedMessage .. " " .. translations[closestMatch]
            else
                translatedMessage = translatedMessage .. " " .. word
            end
        end
    end
    d(string.format("[Kontko's Chat Translator] Translated: %s", translatedMessage))
    
end

SLASH_COMMANDS["/tr"] = Translate

EVENT_MANAGER:RegisterForEvent("KontkosTranslator_OnChatMessage", EVENT_CHAT_MESSAGE_CHANNEL, OnChatMessage)

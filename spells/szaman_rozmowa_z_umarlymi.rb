require 'kolor.rb'
include NWScript
include Kolory

pc = GetPcSpeaker()
lv = GetLevelByClass(CLASS_TYPE_DRUID, pc)

speak = Kolor("BLEKITNY")+"Zaklêcie fabularne: Rozmowa z Umar³ymi*"
NWScript.AssignCommand(pc){SpeakString(speak)}


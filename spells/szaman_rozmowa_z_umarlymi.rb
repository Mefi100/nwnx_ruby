require 'kolor.rb'
include NWScript
include Kolory

pc = GetPcSpeaker()
lv = GetLevelByClass(CLASS_TYPE_DRUID, pc)

speak = Kolor("BLEKITNY")+"Zakl�cie fabularne: Rozmowa z Umar�ymi*"
NWScript.AssignCommand(pc){SpeakString(speak)}


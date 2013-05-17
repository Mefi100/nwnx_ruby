module Kolory
COLORTOKEN =%q{                  ##################$%&'()*+,-./0123456789:;;==?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[[]^_`abcdefghijklmnopqrstuvwxyz{|}~~€‚ƒ„…†‡ˆ‰Š‹Œ‘’“”•–—˜™š›œŸ¡¡¢£¤¥¦§¨©ª«¬¬®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏĞÑÒÓÔÕÖ×ØÙÚÛÜİŞßàáâãäåæçèéêëìíîïğñòóôõö÷øùúûüışş}

    def Kolor(skolor)
        if skolor == "BIALY"
          return "<c···>"
        elsif skolor == "BLEKITNY"
          return "<c ··>"
        elsif skolor == "CZERWONY"
          return "<c·  >"
        elsif skolor == "NIEBIESKI"
          return "<c  ·>"
        elsif skolor == "PURPUROWY"
          return "<c· ·>"
        elsif skolor == "ZIELONY"
          return "<c · >"
        elsif skolor == "ZOLTY"
          return "<c·· >"
        else 
          return ""
        end 
    end

    def ColorString(sText,nRed=255,nGreen=255,nBlue=255)
		return "<c" + COLORTOKEN[nRed .. nRed] + COLORTOKEN[nGreen .. nGreen] + COLORTOKEN[nBlue .. nBlue] + ">" + sText + "</c>"
     return ""
    end

end
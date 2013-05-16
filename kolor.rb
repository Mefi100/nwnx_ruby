module Kolor
  COLORTOKEN = %q{                  ##################$%&'()*+,-./0123456789:;;==?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[[]^_`abcdefghijklmnopqrstuvwxyz{|}~~€‚ƒ„…†‡ˆ‰Š‹ŒŽ‘’“”•–—˜™š›œžŸ¡¡¢£¤¥¦§¨©ª«¬¬®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþþ}
    
    def Kolor(skolor)
      #to do
      return ""
    end

    def ColorString(sText,nRed=255,nGreen=255,nBlue=255)
    return "<c" + COLORTOKEN[nRed .. nRed] + COLORTOKEN[nGreen .. nGreen] + COLORTOKEN[nBlue .. nBlue] + ">" + sText + "</c>"
  end

end
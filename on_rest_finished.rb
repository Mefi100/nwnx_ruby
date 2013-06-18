include NWScript

pc = GetLastPCRested()
book = GetItemPossessedBy(pc, "mf_faction")

DeleteLocalInt(book, "szaman_lisciec")
DeleteLocalInt(book, "szaman_s_sierp")
DeleteLocalInt(book, "szaman_duch")
DeleteLocalInt(book, "szaman_wilk")
DeleteLocalInt(book, "szaman_z_sierp")
DeleteLocalInt(book, "szaman_znajomosc")
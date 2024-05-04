
    #ATT
    newstats = calcola_ev(int(att),int(statstxt[1].get()),  int(ivstxt[1].get()), int(textbox_lvl.get()),False)
    evstxt[1].delete(0, tk.END)
    evstxt[1].insert(0, str(int(math.ceil(newstats))))
    print("EVs ATT calcolati:", newstats)

    capmaxevs += math.ceil(newstats)
    print(capmaxevs)

    #DEF
    newstats = calcola_ev(int(dif),int(statstxt[2].get()), int(ivstxt[2].get()), int(textbox_lvl.get()),False)
    evstxt[2].delete(0, tk.END)
    evstxt[2].insert(0, str(int(math.ceil(newstats))))
    print("EVs DEF calcolati:", newstats)

    capmaxevs += math.ceil(newstats)
    print(capmaxevs)

    #ATTS
    newstats = calcola_ev(int(atts),int(statstxt[3].get()),  int(ivstxt[3].get()), int(textbox_lvl.get()),False)
    evstxt[3].delete(0, tk.END)
    evstxt[3].insert(0, str(int(math.ceil(newstats))))
    print("EVs ATTS calcolati:", newstats)

    capmaxevs += math.ceil(newstats)
    print(capmaxevs)

    #DEFS
    newstats = calcola_ev( int(defs),int(statstxt[4].get()), int(ivstxt[4].get()), int(textbox_lvl.get()),False)
    evstxt[4].delete(0, tk.END)
    evstxt[4].insert(0, str(int(math.ceil(newstats))))
    print("EVs DEFS calcolati:", newstats)

    capmaxevs += math.ceil(newstats)
    print(capmaxevs)

    #SPD
    newstats = calcola_iv(int(spd),int(statstxt[5].get()),  int(ivstxt[5].get()), int(textbox_lvl.get()),False)
    evstxt[5].delete(0, tk.END)
    evstxt[5].insert(0, str(int(math.ceil(newstats))))
    print("EVs SPD calcolati:", newstats)

    capmaxevs += math.ceil(newstats)
    print(capmaxevs)


#------------------------------

    #PS
    newstats = calcola_iv(int(ps),int(statstxt[0].get()),int(evstxt[0].get()), int(textbox_lvl.get()),True)
    ivstxt[0].delete(0, tk.END)
    ivstxt[0].insert(0, str(int(math.ceil(newstats))))
    print("IVs PS calcolati:", newstats)

    #ATT
    newstats = calcola_iv(int(att),int(statstxt[1].get()),  int(evstxt[1].get()), int(textbox_lvl.get()),False)
    ivstxt[1].delete(0, tk.END)
    ivstxt[1].insert(0, str(int(math.ceil(newstats))))
    print("IVs ATT calcolati:", newstats)

    #DEF
    newstats = calcola_iv(int(dif),int(statstxt[2].get()), int(evstxt[2].get()), int(textbox_lvl.get()),False)
    ivstxt[2].delete(0, tk.END)
    ivstxt[2].insert(0, str(int(math.ceil(newstats))))
    print("IVs DEF calcolati:", newstats)

    #ATTS
    newstats = calcola_iv(int(atts),int(statstxt[3].get()),  int(evstxt[3].get()), int(textbox_lvl.get()),False)
    ivstxt[3].delete(0, tk.END)
    ivstxt[3].insert(0, str(int(math.ceil(newstats))))
    print("IVs ATTS calcolati:", newstats)

    #DEFS
    newstats = calcola_iv( int(defs),int(statstxt[4].get()), int(evstxt[4].get()), int(textbox_lvl.get()),False)
    ivstxt[4].delete(0, tk.END)
    ivstxt[4].insert(0, str(int(math.ceil(newstats))))
    print("IVs DEFS calcolati:", newstats)

    #SPD
    newstats = calcola_iv(int(spd),int(statstxt[5].get()),  int(evstxt[5].get()), int(textbox_lvl.get()),False)
    ivstxt[5].delete(0, tk.END)
    ivstxt[5].insert(0, str(int(math.ceil(newstats))))
    print("IVs SPD calcolati:", newstats)
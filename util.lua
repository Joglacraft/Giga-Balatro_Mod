-- UPGRADE FUNCTIONS --
function check_upgrade(base_enh)
    local upgraded_enh = nil
    if base_enh == 'm_giga_soil' then
        upgraded_enh = 'm_giga_richSoil'
    elseif base_enh == 'm_giga_richSoil' then
        upgraded_enh = 'm_giga_fossilSoil'
    elseif base_enh == 'm_bonus' then
        upgraded_enh = 'm_giga_bigBonus'
    elseif base_enh == 'm_steel' then
        upgraded_enh = 'm_giga_titanium'
    elseif base_enh == 'm_stone' then
        upgraded_enh = 'm_giga_polishStone'
    elseif base_enh == 'm_mult' then
        upgraded_enh = 'm_giga_multPlus'
    elseif base_enh == 'm_lucky' then
        upgraded_enh = 'm_giga_luckiest'
    elseif base_enh == 'm_gold' then
        upgraded_enh = 'm_giga_perfectGold'
    elseif base_enh == 'm_glass' then
        upgraded_enh = 'm_giga_reinforcedGlass'
    end
    return upgraded_enh
end
function upgrade_enhencement_specific(selected_card, base_enh)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.4,
        func = function()
            selected_card:juice_up(0.3, 0.5)
            return true
        end
    }))
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.15,
        func = function()
            selected_card:flip()
            selected_card:juice_up(0.3, 0.3)
            return true
        end
    }))
    delay(0.2)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.1,
        func = function()
            if SMODS.has_enhancement(selected_card, base_enh) then
                selected_card:set_ability(G.P_CENTERS[check_upgrade(base_enh)])
            else
                selected_card:set_ability(G.P_CENTERS[base_enh])
            end
            return true
        end
    }))
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.15,
        func = function()
            selected_card:flip()
            selected_card:juice_up(0.3, 0.3)
            return true
        end
    }))
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.2,
        func = function()
            G.hand:unhighlight_all()
            return true
        end
    }))
    delay(0.5)
end
function upgrade_enhencement(selected_card)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.4,
        func = function()
            selected_card:juice_up(0.3, 0.5)
            return true
        end
    }))
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.15,
        func = function()
            selected_card:flip()
            selected_card:juice_up(0.3, 0.3)
            return true
        end
    }))
    delay(0.2)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.1,
        func = function()
            if SMODS.has_enhancement(selected_card, 'm_giga_soil') then
                selected_card:set_ability(G.P_CENTERS["m_giga_richSoil"])
            elseif SMODS.has_enhancement(selected_card, 'm_giga_richSoil') then
                selected_card:set_ability(G.P_CENTERS["m_giga_fossilSoil"])
            elseif SMODS.has_enhancement(selected_card, 'm_bonus') then
                selected_card:set_ability(G.P_CENTERS["m_giga_bigBonus"])
            elseif SMODS.has_enhancement(selected_card, 'm_steel') then
                selected_card:set_ability(G.P_CENTERS["m_giga_titanium"])
            elseif SMODS.has_enhancement(selected_card, 'm_stone') then
                selected_card:set_ability(G.P_CENTERS["m_giga_polishStone"])
            elseif SMODS.has_enhancement(selected_card, 'm_mult') then
                selected_card:set_ability(G.P_CENTERS["m_giga_multPlus"])
            elseif SMODS.has_enhancement(selected_card, 'm_lucky') then
                selected_card:set_ability(G.P_CENTERS["m_giga_luckiest"])
            elseif SMODS.has_enhancement(selected_card, 'm_gold') then
                selected_card:set_ability(G.P_CENTERS["m_giga_perfectGold"])
            elseif SMODS.has_enhancement(selected_card, 'm_glass') then
                selected_card:set_ability(G.P_CENTERS["m_giga_reinforcedGlass"])
            end
            return true
        end
    }))
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.15,
        func = function()
            selected_card:flip()
            selected_card:juice_up(0.3, 0.3)
            return true
        end
    }))
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.2,
        func = function()
            G.hand:unhighlight_all()
            return true
        end
    }))
    delay(0.5)
end
function upgrade_seal(selected_card)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.4,
        func = function()
            selected_card:juice_up(0.3, 0.5)
            return true
        end
    }))
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.15,
        func = function()
            selected_card:flip()
            selected_card:juice_up(0.3, 0.3)
            return true
        end
    }))
    delay(0.2)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.1,
        func = function()
            if selected_card:get_seal() == "Red" then 
                selected_card:set_seal("giga_redPlus")
            elseif selected_card:get_seal() == "Blue" then
                selected_card:set_seal("giga_bluePlus")
            elseif selected_card:get_seal() == "Gold" then
                selected_card:set_seal("giga_goldPlus")
            elseif selected_card:get_seal() == "Purple" then
                selected_card:set_seal("giga_purplePlus")
            end
            return true
        end
    }))
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.15,
        func = function()
            selected_card:flip()
            selected_card:juice_up(0.3, 0.3)
            return true
        end
    }))
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.2,
        func = function()
            G.hand:unhighlight_all()
            return true
        end
    }))
    delay(0.5)
end
function upgraded_enh_condition(card)
    if SMODS.has_enhancement(card, 'm_giga_richSoil') then
        return true
    elseif SMODS.has_enhancement(card, 'm_giga_fossilSoil') then
        return true
    elseif SMODS.has_enhancement(card, 'm_giga_bigBonus') then
        return true
    elseif SMODS.has_enhancement(card, 'm_giga_titanium') then
        return true
    elseif SMODS.has_enhancement(card, 'm_giga_polishStone') then
        return true
    elseif SMODS.has_enhancement(card, 'm_giga_multPlus') then
        return true
    elseif SMODS.has_enhancement(card, 'm_giga_luckiest') then
        return true
    elseif SMODS.has_enhancement(card, 'm_giga_perfectGold') then
        return true
    elseif SMODS.has_enhancement(card, 'm_giga_reinforcedGlass') then
        return true
    end
    return false
end
function upgraded_seal_condition(card)
    if card:get_seal() == "giga_redPlus" then 
        return true
    elseif card:get_seal() == "giga_bluePlus" then
        return true
    elseif card:get_seal() == "giga_goldPlus" then
        return true
    elseif card:get_seal() == "giga_purplePlus" then
        return true
    end
    return false
end


-- CREATE FUNCTIONS --
function _create(card,type,place,negative,negative_condition)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
        G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                local obj = create_card(type,place, nil, nil, nil, nil, nil, 'create'..type)
                if negative then
                    if negative_condition then
                        if card.edition and card.edition.type == 'negative' then
                            obj:set_edition('e_negative', true)
                        end
                    else
                        obj:set_edition('e_negative', true)
                    end 
                end
                obj:add_to_deck()
                G.consumeables:emplace(obj)
                obj:juice_up(0.3, 0.5)
                G.GAME.consumeable_buffer = 0
                return true
            end
        }))
    end
end
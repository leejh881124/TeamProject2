/**
 * The Italian (Italiano) language file for Shadowbox.
 *
 * This file is part of Shadowbox.
 *
 * Shadowbox is an online media viewer application that supports all of the
 * web's most popular media publishing formats. Shadowbox is written entirely
 * in JavaScript and CSS and is highly customizable. Using Shadowbox, website
 * authors can showcase a wide assortment of media in all major browsers without
 * navigating users away from the linking page.
 *
 * You should have received a license with this distribution explaining the terms
 * under which Shadowbox may be used. If you did not, you may obtain a copy of the
 * license at http://shadowbox-js.com/LICENSE
 *
 * @author      Michael J. I. Jackson <michael@mjijackson.com>
 * @copyright   2007-2009 Michael J. I. Jackson
 * @version     SVN: $Id: shadowbox-it.js 20M 2009-04-23 13:08:21Z (local) $
 */

if(typeof Shadowbox == 'undefined')
    throw 'Unable to load Shadowbox language file, Shadowbox not found.';

/**
 * An object containing all textual messages to be used in Shadowbox. These are
 * provided so they may be translated into different languages. Alternative
 * translations may be found in js/lang/shadowbox-*.js where * is an abbreviation
 * of the language name (see
 * http://www.gnu.org/software/gettext/manual/gettext.html#Language-Codes).
 *
 * @var     Object
 * @public
 */
Shadowbox.lang = {

    code:       'it',

    of:         'di',

    loading:    'in caricamento',

    cancel:     'Annulla',

    next:       'Avanti',

    previous:   'Indietro',

    play:       'Play',

    pause:      'Pausa',

    close:      'Chiudi',

    errors:     {
        single: 'È necessario installare il plugin <a href="{0}">{1}</a> per poter vedere questo contenuto.',
        shared: 'È necessario installare i plugin <a href="{0}">{1}</a> e <a href="{2}">{3}</a> per poter vedere questo contenuto.',
        either: 'È necessario installare o il plugin <a href="{0}">{1}</a> o <a href="{2}">{3}</a> per poter vedere questo contenuto.'
    }

};

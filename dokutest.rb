=begin
Diese Klasse dient nur dazu, um die Dokumentation von Ruby-Code in Zusammenhang mit dem Kommando rdoc zu demonstrieren
=end

class Konto
  # neues Objekt anlegen
  # noch mehr Text
  #--
  # privater Kommentar
  # muss noch besser implementiert werden
  #++
  # und wieder oeffentlich
  def initalize(name)
    @name = name
  end

  # Betrag 'betrag' auf Konto einzahlen
  def einzahlen(betrag)
    @saldo += betrag
  end

  # Methode f der Klasse Konto
  # mehr Kommentar
  def f(b)
    a = 5
  end

  def methode1(a)
    b = a
  end
end

class Hilfsklasse #nodoc
  # neues Objekt anlegen
  def initialize(arg)
    @name = arg
  end
  
  # Methode f
  def f(a)
    # noch zu schreiben
    # ...
  end
end

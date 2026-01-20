#let article-or-conference(p) = {
  let (key, document) = p
  if "parent" in document {
    let par = none
    if type(document.parent) == array {
      par = document.parent.at(0)
    } else {
      par = document.parent
    }
    if par.type == "periodical" {
      return "article"
    } else if par.type == "proceedings" or parent.type == "conference" {
      return "conference"
    } else {
      return p.type
    }
  } else {
    return p.type
  }
}
#let filter-by-type(p, type) = {
  let (key, document) = p
  if document.type == "article" {
    type == article-or-conference(p)
  } else {
    document.type == type
  }
}
#let journal-pubs = yaml("bib.yaml").pairs().filter(p => filter-by-type(p, "article")).sorted(key: p => str(p.at(1).date)).rev().map(p => label(p.at(0)))
#let conference-pubs = yaml("bib.yaml").pairs().filter(p => filter-by-type(p, "conference")).sorted(key: p => str(p.at(1).date)).rev().map(p => label(p.at(0)))

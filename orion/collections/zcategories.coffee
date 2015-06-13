@Categories = new (orion.collection)('categories',
  singularName: 'Category'
  pluralName: 'Categories'
  title: 'Categories'
  link: title: 'Categories'
  tabular: columns: [
    {
      data: 'title'
      title: 'Title'
    }
  ])
Categories.attachSchema new SimpleSchema(
  title:
    type: String
    label: 'Title'
  items: orion.attribute 'hasMany', {
    label: 'Items'
  }, {
    collection: Items,
    titleField: 'title',
    publicationName: 'youCanPutAnyStringYouWantHere',
  }
  createdAt: orion.attribute('createdAt')
)

@Items = new (orion.collection)('items',
  singularName: 'Item'
  pluralName: 'Items'
  title: 'Items'
  link: title: 'Items'
  tabular: columns: [
    {
      data: 'title'
      title: 'Title'
    }
  ])
Items.attachSchema new SimpleSchema(
  title:
    type: String
    label: 'Title'
  createdAt: orion.attribute('createdAt')
)

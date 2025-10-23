export interface ResourceNode {
  id: number
  root?: boolean
  available?: boolean
  resourceName: string
  title: string
  path: string
  component: string
  order: number
  icon: string
  type: ResourceType
  children: ResourceNode[]
  parent?: ResourceNode | null
}

export interface QueryResouceBody {
  resourceName?: string
  title?: string
  path?: string
  type?: ResourceType
}

export interface AddResourceBody {
  resourceName: string
  title: string
  path: string
  component: string
  icon: string
  type: ResourceType
  parent: ResourceNode
  order: number
}

export enum ResourceType {
  MENU = '0',
  PAGE = '1',
  MODAL = '2',
}

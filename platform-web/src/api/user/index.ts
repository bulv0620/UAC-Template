import { request } from '@/utils/service'
import { User } from './types/user'

export function reqGetUserList(data: PaginationRequestData<User>) {
  return request<ApiResponseData<PaginationResponseData<User>>>({
    url: 'user/list',
    method: 'post',
    data,
  })
}

export function reqCreateUser(data: User) {
  return request<ApiResponseData<{}>>({
    url: 'user/create',
    method: 'post',
    data,
  })
}

export function reqUpdateUser(data: User) {
  return request<ApiResponseData<{}>>({
    url: 'user/update',
    method: 'post',
    data,
  })
}

export function reqRemoveUser(data: { ids: number[] }) {
  return request<ApiResponseData<{}>>({
    url: 'user/remove',
    method: 'post',
    data,
  })
}

export function reqFindRoles(data: User) {
  return request<ApiResponseData<User>>({
    url: 'user/findRoles',
    method: 'post',
    data: data,
  })
}

export function reqBindRolesToUser(data: {
  userId: number
  roleIds: number[]
}) {
  return request<ApiResponseData<any>>({
    url: '/user/bindRolesToUser',
    method: 'post',
    data: data,
  })
}

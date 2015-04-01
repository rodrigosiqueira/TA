/**
* @file set.h
* @brief 
*/

#ifndef _SET_H_
#define _SET_H_

extern const void * Set;

/**
* @param _set
* @param _element
* @return
* @brief
*/
extern void * add(void * _set, void * _element);

/**
* @param _set
* @param _element
* @return
* @brief
*/
extern void * find(const void * _set, const void * _element);

/**
* @param _set
* @param _element
* @return
* @brief
*/
extern void * drop(void * _set, const void * _element);

/**
* @param _set
* @param _element
* @return
* @brief
*/
extern int contains(const void * _set, const void * _element);

#endif

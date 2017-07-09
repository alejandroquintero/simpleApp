/*
The MIT License (MIT)

Copyright (c) 2015 Los Andes University

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/
package co.edu.uniandes.csw.simpleapp.ejbs;

import co.edu.uniandes.csw.simpleapp.api.IProductLogic;
import co.edu.uniandes.csw.simpleapp.entities.ProductEntity;
import co.edu.uniandes.csw.simpleapp.persistence.ProductPersistence;
import co.edu.uniandes.csw.simpleapp.entities.CategoryEntity;
import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.persistence.NoResultException;

/**
 * @generated
 */
@Stateless
public class ProductLogic implements IProductLogic {

    @Inject private ProductPersistence persistence;


    /**
     * Obtiene el número de registros de Product.
     *
     * @return Número de registros de Product.
     * @generated
     */
    public int countProducts() {
        return persistence.count();
    }

    /**
     * Obtiene la lista de los registros de Product.
     *
     * @return Colección de objetos de ProductEntity.
     * @generated
     */
    @Override
    public List<ProductEntity> getProducts() {
        return persistence.findAll();
    }

    /**
     * Obtiene la lista de los registros de Product indicando los datos para la paginación.
     *
     * @param page Número de página.
     * @param maxRecords Número de registros que se mostraran en cada página.
     * @return Colección de objetos de ProductEntity.
     * @generated
     */
    @Override
    public List<ProductEntity> getProducts(Integer page, Integer maxRecords) {
        return persistence.findAll(page, maxRecords);
    }

    /**
     * Obtiene los datos de una instancia de Product a partir de su ID.
     *
     * @param id Identificador de la instancia a consultar
     * @return Instancia de ProductEntity con los datos del Product consultado.
     * @generated
     */
    public ProductEntity getProduct(Long id) {
        return persistence.find(id);
    }

    /**
     * Se encarga de crear un Product en la base de datos.
     *
     * @param entity Objeto de ProductEntity con los datos nuevos
     * @return Objeto de ProductEntity con los datos nuevos y su ID.
     * @generated
     */
    @Override
    public ProductEntity createProduct(ProductEntity entity) {
        persistence.create(entity);
        return entity;
    }

    /**
     * Actualiza la información de una instancia de Product.
     *
     * @param entity Instancia de ProductEntity con los nuevos datos.
     * @return Instancia de ProductEntity con los datos actualizados.
     * @generated
     */
    @Override
    public ProductEntity updateProduct(ProductEntity entity) {
        return persistence.update(entity);
    }

    /**
     * Elimina una instancia de Product de la base de datos.
     *
     * @param id Identificador de la instancia a eliminar.
     * @generated
     */
    @Override
    public void deleteProduct(Long id) {
        persistence.delete(id);
    }
  

    /**
     * Obtiene una colección de instancias de CategoryEntity asociadas a una
     * instancia de Product
     *
     * @param productId Identificador de la instancia de Product
     * @return Colección de instancias de CategoryEntity asociadas a la instancia de Product
     * @generated
     */
    @Override
    public List<CategoryEntity> listCategory(Long productId) {
        return getProduct(productId).getCategory();
    }

    /**
     * Obtiene una instancia de CategoryEntity asociada a una instancia de Product
     *
     * @param productId Identificador de la instancia de Product
     * @param categoryId Identificador de la instancia de Category
     * @generated
     */
    @Override
    public CategoryEntity getCategory(Long productId, Long categoryId) {
        List<CategoryEntity> list = getProduct(productId).getCategory();
        CategoryEntity categoryEntity = new CategoryEntity();
        categoryEntity.setId(categoryId);
        int index = list.indexOf(categoryEntity);
        if (index >= 0) {
            return list.get(index);
        }
        return null;
    }

    /**
     * Asocia un Category existente a un Product
     *
     * @param productId Identificador de la instancia de Product
     * @param categoryId Identificador de la instancia de Category
     * @return Instancia de CategoryEntity que fue asociada a Product
     * @generated
     */
    @Override
    public CategoryEntity addCategory(Long productId, Long categoryId) {
        ProductEntity productEntity = getProduct(productId);
        CategoryEntity categoryEntity = new CategoryEntity();
        categoryEntity.setId(categoryId);
        productEntity.getCategory().add(categoryEntity);
        return getCategory(productId, categoryId);
    }

    /**
     * Remplaza las instancias de Category asociadas a una instancia de Product
     *
     * @param productId Identificador de la instancia de Product
     * @param list Colección de instancias de CategoryEntity a asociar a instancia de Product
     * @return Nueva colección de CategoryEntity asociada a la instancia de Product
     * @generated
     */
    @Override
    public List<CategoryEntity> replaceCategory(Long productId, List<CategoryEntity> list) {
        ProductEntity productEntity = getProduct(productId);
        productEntity.setCategory(list);
        return productEntity.getCategory();
    }

    /**
     * Desasocia un Category existente de un Product existente
     *
     * @param productId Identificador de la instancia de Product
     * @param categoryId Identificador de la instancia de Category
     * @generated
     */
    @Override
    public void removeCategory(Long productId, Long categoryId) {
        ProductEntity entity = getProduct(productId);
        CategoryEntity categoryEntity = new CategoryEntity();
        categoryEntity.setId(categoryId);
        entity.getCategory().remove(categoryEntity);
    }
     @Override
    public List<ProductEntity> getProductByCategory(Integer page, Integer maxRecords, Long categoryid) {
        return persistence.getProductByCategory(page, maxRecords, categoryid);

    }
}

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
(function (ng) {

    var mod = ng.module("categoryModule");

    mod.controller("categoryListCtrl", ["$scope", '$state', 'categorys', '$stateParams','pmodel',
        function ($scope, $state, categorys, $params,pmodel) {
            $scope.model = pmodel;
            $scope.records = categorys;
             $scope.catTable={};
             
              $scope.records.forEach(function(r){
                   
                if(r.parentCategory !== undefined){
                    $scope.records.forEach(function(re,index){
                        console.log(index);
                if(re.parentCategory === undefined){
                     
                   if(re.name === r.parentCategory.name){
                       if($scope.catTable[re.name]){
                       $scope.catTable[re.name].push({"name":r.name,"id":r.id});
                   }
                       else{
                           $scope.catTable[re.name]=[];
                           $scope.catTable[re.name].push({"name":r.name,"id":r.id});
                       }
                   }   
                }
            });
                }
            });
           $scope.sentP = function(value){ categorys.get(value.id+"/byproduct").then(function(res){
                   $scope.products = res;
           });
           console.log(JSON.stringify($scope.products));
           };
           
           
                
               
            //Paginación
            this.itemsPerPage = $params.limit;
            this.currentPage = $params.page;
            this.totalItems = categorys.totalRecords;

           this.pageChanged = function () {
                $state.go('productList', {page: this.currentPage});
            };

            $scope.actions = {
                create: {
                    displayName: 'Create',
                    icon: 'plus',
                    fn: function () {
                        $state.go('productNew');
                    }
                },
                refresh: {
                    displayName: 'Refresh',
                    icon: 'refresh',
                    fn: function () {
                        $state.reload();
                    }
                }            };
            $scope.recordActions = {
                detail: {
                    displayName: 'Detail',
                    icon: 'eye-open',
                    fn: function (rc) {
                        $state.go('productDetail', {productId: rc.id});
                    },
                    show: function () {
                        return true;
                    }
                },
                edit: {
                    displayName: 'Edit',
                    icon: 'edit',
                    fn: function (rc) {
                        $state.go('productEdit', {productId: rc.id});
                    },
                    show: function () {
                        return true;
                    }
                },
                delete: {
                    displayName: 'Delete',
                    icon: 'minus',
                    fn: function (rc) {
                        $state.go('productDelete', {productId: rc.id});
                    },
                    show: function () {
                        return true;
                    }
                }
            };
        }]);
})(window.angular);

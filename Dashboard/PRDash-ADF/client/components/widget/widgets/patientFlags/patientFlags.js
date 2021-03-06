/*
 * Copyright (c) 2014 DataTorrent, Inc. ALL Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

'use strict';

angular.module('ui.widgets')
  .directive('wtPatientFlags', function ($timeout) {
    return {
      restrict: 'A',
      replace: true,
      templateUrl: 'client/components/widget/widgets/patientFlags/patientFlags.html',
      scope: {
        data: '='
      },
      controller: function ($scope, DTOptionsBuilder, DTColumnDefBuilder) {

        $scope.dtOptions = DTOptionsBuilder.newOptions().withDOM('lfrti')
            .withScroller()
            .withOption('deferRender', true)
            // Do not forget to add the scorllY option!!!
            .withOption('scrollY', 200)
            .withOption('paging',false)
            .withOption('bDestroy',true)
            .withOption('order', [1, 'asc']);
        //.withPaginationType('full_numbers').withDisplayLength(5);
        $scope.dtColumnDefs = [
            DTColumnDefBuilder.newColumnDef(0),
            DTColumnDefBuilder.newColumnDef(1)
        ];
        /*$resource('data.json').query().$promise.then(function(persons) {
            vm.persons = persons;
        });*/
      },
	link: function postLink(scope, element) {
		scope.$on("bindEvents", function (){
			$($('#patientFlagDiv table')[0]).find('th').each(function(){
			  $(this).attr('tabindex','-1');
			});
		});
    scope.$watch('data', function (data) {
      if (data) { 

    		$timeout(function(){
          $.fn.dataTable.ext.errMode = 'throw';
          scope.$emit('bindEvents');
            scope.data = data;
        },1500)            
      }
    });
	  scope.updateCategory
  }
};
});
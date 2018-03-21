/*-----------------------------------------------------------------------
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"; you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-----------------------------------------------------------------------*/
#pragma once

#include "AbstractResqmlDataObjectTest.h"
#include <iostream>

namespace COMMON_NS {
	class EpcDocument;
}

namespace resqml2_0_1test {
	class AbstractFeatureInterpretationTest : public AbstractResqmlDataObjectTest {
	public:
		/**
		 * Creation of a Resqml interpretation testing object from an EPC document path. At serialize() call,
		 * exising .epc file will be erased. 
		 * @param epcDocPath the path of the .epc file (including .epc extension)
		 * @param uuid the uuid of the Resqml top level object to test
		 * @param title the title of the Resqml top level object to test
		 * @param uuidFeature uuid of the interpreted feature
		 * @param titleFeature title of the interpreted feature
		 */
		AbstractFeatureInterpretationTest(const std::string & epcDocPath, const std::string & uuid, const std::string & title, const std::string & uuidFeature, const std::string & titleFeature);
		
		/**
		 * Creation of a Resqml interpretation testing object from an existing EPC document.
		 * @param epcDoc an existing EPC document
		 * @param uuid the uuid of the Resqml top level object to test
		 * @param title the title of the Resqml top level object to test
		 * @param uuidFeature uuid of the interpreted feature
		 * @param titleFeature title of the interpreted feature
		 */
		AbstractFeatureInterpretationTest(COMMON_NS::EpcDocument * epcDoc, const std::string & uuid, const std::string & title, const std::string & uuidFeature, const std::string & titleFeature);

		/**
		 * This methods overrides (and calls) AbstractObjectTest::readEpcDoc(). It includes a test for checking that the interpreted
		 * feature is consistantly readed. 
		 */
		void readEpcDoc();
	protected:
		const std::string uuidFeature;
		const std::string titleFeature;
	};
}


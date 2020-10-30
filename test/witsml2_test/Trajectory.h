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

#include "../AbstractObjectTest.h"
#include <iostream>

namespace COMMON_NS {
	class DataObjectRepository;
}

namespace witsml2_test {
	class Trajectory : public commontest::AbstractObjectTest {
	public:
		static const char* defaultUuid;
		static const char* defaultTitle;

		/**
		* Creation of a testing object from an EPC document path. At serialize() call,
		* exising .epc file will be erased.
		* @param epcDocPath the path of the .epc file (including .epc extension)
		*/
		Trajectory(const std::string & epcDocPath);

		/**
		* Creation of a testing object from an existing EPC document.
		* @param repo an existing EPC document
		* @param init true if this object is created for initialization purpose else false if it is
		* created for reading purpose. According to init value a iniEpcDoc() or readRepo() is called.
		*/
		Trajectory(COMMON_NS::DataObjectRepository* repo, bool init);
	protected:
		void initRepoHandler();
		void readRepoHandler();
	};
}

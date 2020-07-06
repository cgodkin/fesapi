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

#include "../resqml2/DiscreteColorMap.h"

namespace RESQML2_2_NS
{
	/** @brief	Map of discrete colors. This class cannot be inherited. */
	class DiscreteColorMap final : public RESQML2_NS::DiscreteColorMap
	{
	public:
		/**
		 * @brief	Constructor
		 *
		 * @param [in]	repo 	If non-nullptr, the repo.
		 * @param 	  	guid 	The guid to set to graphical information set.
		 * @param 	  	title	A title for graphical information set.
		 */
		DiscreteColorMap(COMMON_NS::DataObjectRepository* repo, std::string const& guid, std::string const& title);
		
		/**
		 * Only to be used in partial transfer context
		 */
		DiscreteColorMap(gsoap_resqml2_0_1::eml20__DataObjectReference* partialObject) : RESQML2_NS::DiscreteColorMap(partialObject) {}

		/**
		* Creates an instance of this class by wrapping a gsoap instance.
		*/
		DiscreteColorMap(gsoap_eml2_3::resqml22__DiscreteColorMap* fromGsoap) :
			RESQML2_NS::DiscreteColorMap(fromGsoap) {}

		/**
		* Destructor does nothing since the memory is managed by the gsoap context.
		*/
		~DiscreteColorMap() {}
	};
}

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

#include "../resqml2/WellboreInterpretation.h"

namespace RESQML2_0_1_NS
{
	class WellboreInterpretation : public RESQML2_NS::WellboreInterpretation
	{
	public:

		/**
		* Only to be used in partial transfer context
		*/
		DLL_IMPORT_OR_EXPORT WellboreInterpretation(gsoap_resqml2_0_1::eml20__DataObjectReference* partialObject) :
			RESQML2_NS::WellboreInterpretation(partialObject)
		{}

		/**
		* Creates an instance of this class in a gsoap context.
		* @param horizon	The feature the instance interprets.
		* @param guid		The guid to set to the fault. If empty then a new guid will be generated.
		* @param title		A title for the instance to create.
		* @param isDrilled	Indicate if the wellbore is interpreted wether as drilled or not.
		*/
		WellboreInterpretation(RESQML2_NS::WellboreFeature* WellboreFeature, const std::string& guid, const std::string& title, bool isDrilled);

		/**
		* Creates an instance of this class by wrapping a gsoap instance.
		*/
		WellboreInterpretation(gsoap_resqml2_0_1::_resqml20__WellboreInterpretation* fromGsoap) : RESQML2_NS::WellboreInterpretation(fromGsoap) {}

		/**
		* Destructor does nothing since the memory is managed by the gsoap context.
		*/
		~WellboreInterpretation() {}

		/**
		* Indicates if the wellbore has been interpreted as drilled or not.
		*/
		bool isDrilled() const;
	};
}

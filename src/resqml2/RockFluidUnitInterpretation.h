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

#include "RockFluidOrganizationInterpretation.h"

namespace RESQML2_NS
{
	class RockFluidUnitInterpretation : public RESQML2_NS::AbstractFeatureInterpretation
	{
	public:
		/**
		* Destructor does nothing since the memory is managed by the gsoap context.
		*/
		virtual ~RockFluidUnitInterpretation() {}

		/**
		 * Indicates if the instance has an information about its deposition mode.
		 */
		DLL_IMPORT_OR_EXPORT virtual bool hasPhase() const = 0;

		/**
		 * Get the deposition mode of the stratigraphic unit interpretation.
		 * You should verify its existency using hasDepositionMode() before to call this function.
		 */
		DLL_IMPORT_OR_EXPORT virtual gsoap_eml2_2::resqml22__Phase getPhase() const = 0;

		/**
		* The standard XML tag without XML namespace for serializing this data object.
		*/
		DLL_IMPORT_OR_EXPORT static const char* XML_TAG;

		/**
		* Get the standard XML tag without XML namespace for serializing this data object.
		*/
		DLL_IMPORT_OR_EXPORT virtual std::string getXmlTag() const { return XML_TAG; }

	protected:
		/**
		* Only to be used in partial transfer context
		*/
		DLL_IMPORT_OR_EXPORT RockFluidUnitInterpretation(gsoap_resqml2_0_1::eml20__DataObjectReference* partialObject) : RESQML2_NS::AbstractFeatureInterpretation(partialObject) {}

		RockFluidUnitInterpretation() {}

		/**
		* Creates an instance of this class by wrapping a gsoap instance.
		*/
		RockFluidUnitInterpretation(gsoap_resqml2_0_1::_resqml20__RockFluidUnitInterpretation* fromGsoap) : RESQML2_NS::AbstractFeatureInterpretation(fromGsoap) {}
		RockFluidUnitInterpretation(gsoap_eml2_2::_resqml22__RockFluidUnitInterpretation* fromGsoap) : RESQML2_NS::AbstractFeatureInterpretation(fromGsoap) {}
	};
}

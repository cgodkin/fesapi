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

#include "BoundaryFeatureInterpretation.h"
#include "StructuralOrganizationInterpretation.h"
#include "StratigraphicColumnRankInterpretation.h"

/** . */
namespace RESQML2_0_1_NS
{
	/** A geobody boundary interpretation. */
	class GeobodyBoundaryInterpretation : public BoundaryFeatureInterpretation
	{
	public:

		/**
		 * Only to be used in partial transfer context
		 *
		 * @param [in,out]	partialObject	If non-null, the partial object.
		 *
		 * @returns	A DLL_IMPORT_OR_EXPORT.
		 */
		DLL_IMPORT_OR_EXPORT GeobodyBoundaryInterpretation(gsoap_resqml2_0_1::eml20__DataObjectReference* partialObject) :
			BoundaryFeatureInterpretation(partialObject)
		{
		}

		/**
		 * Creates an instance of this class in a gsoap context.
		 *
		 * @param [in,out]	geobodyBoundary	The feature the instance interprets.
		 * @param 		  	guid		   	The guid to set to the interpretation. If empty then a new
		 * 									guid will be generated.
		 * @param 		  	title		   	A title for the instance to create.
		 */
		GeobodyBoundaryInterpretation(class GeneticBoundaryFeature * geobodyBoundary, const std::string & guid, const std::string & title);

		/**
		 * Creates an instance of this class by wrapping a gsoap instance.
		 *
		 * @param [in,out]	fromGsoap	If non-null, from gsoap.
		 */
		GeobodyBoundaryInterpretation(gsoap_resqml2_0_1::_resqml20__GeobodyBoundaryInterpretation* fromGsoap) : BoundaryFeatureInterpretation(fromGsoap) {}

		/** Destructor does nothing since the memory is managed by the gsoap context. */
		~GeobodyBoundaryInterpretation() {}

		/**
		 * The standard XML tag without XML namespace for serializing this data object.
		 *
		 * @returns	The XML tag.
		 */
		DLL_IMPORT_OR_EXPORT static const char* XML_TAG;

		/**
		 * Get the standard XML tag without XML namespace for serializing this data object.
		 *
		 * @returns	The XML tag.
		 */
		DLL_IMPORT_OR_EXPORT virtual std::string getXmlTag() const { return XML_TAG; }
	};
}

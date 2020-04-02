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

#include "WellboreFrameRepresentation.h"

/** . */
namespace RESQML2_NS
{
	class StratigraphicOccurrenceInterpretation;
	class WellboreMarker;

	/** Proxy class for a wellbore marker frame representation. */
	class WellboreMarkerFrameRepresentation : public WellboreFrameRepresentation
	{
	public:

		/** Cleans the owned markers. */
		virtual ~WellboreMarkerFrameRepresentation() {}

		/**
		 * Gets the number of wellbore marker of this wellbore marker frame representation.
		 *
		 * @returns	The wellbore marker count.
		 */
		DLL_IMPORT_OR_EXPORT virtual unsigned int getWellboreMarkerCount() = 0;

		/**
		 * Get all the wellbore markers of this wellbore marker frame representation.
		 *
		 * @returns	A vector of pointers to all the wellbore markers of this wellbore marker frame
		 * 			representation.
		 */
		DLL_IMPORT_OR_EXPORT std::vector<WellboreMarker *> getWellboreMarkerSet() const;

		/**
		 * Sets stratigraphic occurrence interpretation associated to this wellbore marker frame
		 * representation.
		 *
		 * @exception	std::invalid_argument	If @p stratiOccurenceInterp is @c nullptr.
		 *
		 * @param [in]	stratiOccurenceInterp	The stratigraphic occurrence interpretation to set.
		 */
		DLL_IMPORT_OR_EXPORT virtual void setStratigraphicOccurrenceInterpretation(StratigraphicOccurrenceInterpretation * stratiOccurenceInterp) = 0;

		/**
		 * Sets the correspondence between the intervals of this wellbore marker frame representation
		 * and the units of a stratigraphic column rank interpretation of a stratigraphic occurrence
		 * interpretation.
		 *
		 * @exception	std::invalid_argument	If @p stratiUnitIndices, @p stratiOccurenceInterp or @p
		 * 										proxy is @c nullptr.
		 *
		 * @param [in]	  	stratiUnitIndices	 	The index of the stratigraphic unit per interval, of
		 * 											a given stratigraphic column. The count must be equal
		 * 											to the count of wellbore marker intervals
		 * 											(getWellboreMarkerCount() <tt> - 1
		 * 											</tt>).
		 * @param 		  	nullValue			 	The value which is used to tell that there is no
		 * 											correspondence between stratigraphic units and a
		 * 											particular interval (e.g., within salt, use this null
		 * 											value).
		 * @param [in]	  	stratiOccurenceInterp	The stratigraphic occurrence interpretation to
		 * 											associate to this wellbore marker frame
		 * 											representation.
		 * @param [in,out]	proxy				 	The HDF proxy where the numerical values (indices)
		 * 											are stored.
		 */
		DLL_IMPORT_OR_EXPORT virtual void setIntervalStratigraphicUnits(unsigned int const* stratiUnitIndices, unsigned int nullValue, StratigraphicOccurrenceInterpretation* stratiOccurenceInterp, EML2_NS::AbstractHdfProxy* proxy) = 0;

		/** A stratigraphic occurrence interpretation*. */
		DLL_IMPORT_OR_EXPORT virtual COMMON_NS::DataObjectReference getStratigraphicOccurrenceInterpretationDor() const = 0;

		/** A stratigraphic occurrence interpretation*. */
		DLL_IMPORT_OR_EXPORT StratigraphicOccurrenceInterpretation* getStratigraphicOccurrenceInterpretation() const;

		/** The standard XML tag without XML namespace for serializing this data object. */
		DLL_IMPORT_OR_EXPORT static const char* XML_TAG;

		DLL_IMPORT_OR_EXPORT virtual std::string getXmlTag() const final { return XML_TAG; }

	protected:

		/**
		 * Only to be used in partial transfer context.
		 *
		 * @param [in]	partialObject	If non-nullptr, the partial object.
		 */
		DLL_IMPORT_OR_EXPORT WellboreMarkerFrameRepresentation(gsoap_resqml2_0_1::eml20__DataObjectReference* partialObject) :
			WellboreFrameRepresentation(partialObject) {}

		/**
		 * Default constructor
		 */
		WellboreMarkerFrameRepresentation() {}

		/**
		 * Creates an instance of this class by wrapping a gSOAP instance.
		 *
		 * @param [in]	fromGsoap	If non-null, the gSOAP instance.
		 */
		WellboreMarkerFrameRepresentation(gsoap_resqml2_0_1::_resqml20__WellboreMarkerFrameRepresentation* fromGsoap) :
			WellboreFrameRepresentation(fromGsoap) {}

		/**
		 * Creates an instance of this class by wrapping a gSOAP instance.
		 *
		 * @param [in]	fromGsoap	If non-null, the gSOAP instance.
		 */
		WellboreMarkerFrameRepresentation(gsoap_eml2_3::_resqml22__WellboreMarkerFrameRepresentation* fromGsoap) :
			WellboreFrameRepresentation(fromGsoap) {}

		/** Loads target relationships */
		virtual void loadTargetRelationships() override;
	};
}

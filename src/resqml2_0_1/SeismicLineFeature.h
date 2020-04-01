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

#include "../resqml2/AbstractSeismicLineFeature.h"

/** . */
namespace RESQML2_0_1_NS
{
	/** A seismic line feature. */
	class SeismicLineFeature : public RESQML2_NS::AbstractSeismicLineFeature
	{
	public:

		/**
		 * Only to be used in partial transfer context
		 *
		 * @param [in,out]	partialObject	If non-null, the partial object.
		 *
		 * @returns	A DLL_IMPORT_OR_EXPORT.
		 */
		DLL_IMPORT_OR_EXPORT SeismicLineFeature(gsoap_resqml2_0_1::eml20__DataObjectReference* partialObject) : RESQML2_NS::AbstractSeismicLineFeature(partialObject) {}

		/**
		 * Creates an instance of this class in a gsoap context.
		 *
		 * @param [in,out]	repo			   	The repo where the underlying gsoap proxy is going to be
		 * 										created.
		 * @param 		  	guid			   	The guid to set to this instance. If empty then a new
		 * 										guid will be generated.
		 * @param 		  	title			   	A title for the instance to create.
		 * @param 		  	traceIndexIncrement	The trace index increment. The trace index increment will
		 * 										be the difference in the trace number from abscissa i=0
		 * 										and abscissa i=1. The increment can be a positive or
		 * 										negative integer, but not zero.
		 * @param 		  	firstTraceIndex	   	The index of the first trace beginning at abscissa i=0.
		 * @param 		  	traceCount		   	The count of traces in this seismic line.
		 */
		SeismicLineFeature(COMMON_NS::DataObjectRepository* repo, const std::string & guid, const std::string & title,
			int traceIndexIncrement, int firstTraceIndex, unsigned int traceCount);

		/**
		 * Creates an instance of this class by wrapping a gsoap instance.
		 *
		 * @param [in,out]	fromGsoap	If non-null, from gsoap.
		 */
		SeismicLineFeature(gsoap_resqml2_0_1::_resqml20__SeismicLineFeature* fromGsoap): 
			RESQML2_NS::AbstractSeismicLineFeature(fromGsoap) {}

		/** Destructor does nothing since the memory is manged by the gsoap context. */
		~SeismicLineFeature() {}

		/**
		 * Get the trace index increment between two consecutive traces.
		 *
		 * @returns	The trace index increment.
		 */
		DLL_IMPORT_OR_EXPORT int getTraceIndexIncrement() const;

		/**
		 * Get the first trace index.
		 *
		 * @returns	The first trace index.
		 */
		DLL_IMPORT_OR_EXPORT int getFirstTraceIndex() const;

		/**
		 * Sets seismic line set
		 *
		 * @param [in,out]	seisLineSet	If non-null, set the seis line belongs to.
		 */
		DLL_IMPORT_OR_EXPORT void setSeismicLineSet(RESQML2_NS::SeismicLineSetFeature * seisLineSet);

		/** A seismic line set feature*. */
		DLL_IMPORT_OR_EXPORT COMMON_NS::DataObjectReference getSeismicLineSetDor() const final;

		/**
		 * Get the total count of traces in this seismic line.
		 *
		 * @returns	The trace count.
		 */
		DLL_IMPORT_OR_EXPORT unsigned int getTraceCount() const final;

		/**
		 * Gets the trace labels in this seismic line.
		 *
		 * @returns	The trace labels.
		 */
		DLL_IMPORT_OR_EXPORT std::vector<std::string> getTraceLabels() const final;

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
		DLL_IMPORT_OR_EXPORT virtual std::string getXmlTag() const final { return XML_TAG; }
	};
}

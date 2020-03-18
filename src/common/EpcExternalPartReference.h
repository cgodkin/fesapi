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

#include "AbstractObject.h"

namespace COMMON_NS
{
	/** Proxy class for handling external parts of an EPC package. It must be used at least for external HDF5 parts. */
	class EpcExternalPartReference : public COMMON_NS::AbstractObject
	{
	protected:

		/**
		 * Constructor. Only to be used in partial transfer context
		 *
		 * @param [in]	partialObject	If non-null, the partial object.
		 */
		EpcExternalPartReference(gsoap_resqml2_0_1::eml20__DataObjectReference* partialObject) : COMMON_NS::AbstractObject(partialObject) {}

	public:
		/** Default constructor */
		EpcExternalPartReference() {}

		/**
		 * Creates an instance of this class by wrapping an EML2.0 gSOAP instance
		 *
		 * @param [in]	fromGsoap	If non-null, the gSOAP instance.
		 */
		EpcExternalPartReference(gsoap_resqml2_0_1::_eml20__EpcExternalPartReference* fromGsoap):
			COMMON_NS::AbstractObject(fromGsoap) {}

		/**
		 * Creates an instance of this class by wrapping an EML2.1 gSOAP instance
		 *
		 * @param [in]	fromGsoap	If non-null, the gSOAP instance.
		 */
		EpcExternalPartReference(gsoap_eml2_1::_eml21__EpcExternalPartReference* fromGsoap) :
			COMMON_NS::AbstractObject(fromGsoap) {}

		/** Destructor does nothing since the memory is managed by the gSOAP context */
		~EpcExternalPartReference() {}

		/** The standard XML tag without XML namespace for serializing this data object */
		DLL_IMPORT_OR_EXPORT static const char* XML_TAG;

		/**
		 * Get the standard XML tag without XML namespace for serializing this data object
		 *
		 * @returns	The XML tag.
		 */
		DLL_IMPORT_OR_EXPORT virtual std::string getXmlTag() const { return XML_TAG; }

	protected:
		/** Loads target relationships */
		void loadTargetRelationships() {};
	};
}

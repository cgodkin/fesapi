/*-----------------------------------------------------------------------
Copyright F2I-CONSULTING, (2014-2017)

philippe.verney@f2i-consulting.com

This software is a computer program whose purpose is to access to data formatted using Energistics standards.

This software is governed by the CeCILL-B license under French law and
abiding by the rules of distribution of free software.  You can  use, 
modify and/ or redistribute the software under the terms of the CeCILL-B
license as circulated by CEA, CNRS and INRIA at the following URL
"http://www.cecill.info". 

As a counterpart to the access to the source code and  rights to copy,
modify and redistribute granted by the license, users are provided only
with a limited warranty  and the software's author,  the holder of the
economic rights,  and the successive licensors  have only  limited
liability. 

In this respect, the user's attention is drawn to the risks associated
with loading,  using,  modifying and/or developing or reproducing the
software by the user in light of its specific status of free software,
that may mean  that it is complicated to manipulate,  and  that  also
therefore means  that it is reserved for developers  and  experienced
professionals having in-depth computer knowledge. Users are therefore
encouraged to load and test the software's suitability as regards their
requirements in conditions enabling the security of their systems and/or 
data to be ensured and,  more generally, to use and operate it in the 
same conditions as regards security. 

The fact that you are presently reading this means that you have had
knowledge of the CeCILL-B license and that you accept its terms.
-----------------------------------------------------------------------*/
#pragma once

#include "prodml2_0/DasAcquisition.h"

namespace prodml2_0
{
	class DLL_IMPORT_OR_EXPORT FiberOpticalPath : public prodml2_0::AbstractObject
	{
	public:
		/**
		* Default constructor
		*/
		FiberOpticalPath() {}

		/**
		* Creates an instance of this class in a gsoap context.
		* @param soap		A gsoap context wihch will manage the memory and the serialization/deserialization of this instance.
		* @param guid		The guid to set to this instance. If empty then a new guid will be generated.
		* @param title		A title for the instance to create.
		*/
		FiberOpticalPath(soap* soapContext, const std::string & guid, const std::string & title,
			const std::string & firstSegmentUid, const double & firstSegmentLength, const gsoap_eml2_1::eml21__LengthUom & firstSegmentLengthUom,
			const std::string & terminatorUid, const gsoap_eml2_1::prodml2__TerminationType & terminationType);

		/**
		* Creates an instance of this class by wrapping a gsoap instance.
		*/
		FiberOpticalPath(gsoap_eml2_1::_prodml2__FiberOpticalPath* fromGsoap) : AbstractObject(fromGsoap) {}

		/**
		* Destructor does nothing since the memory is managed by the gsoap context.
		*/
		~FiberOpticalPath() {}
		
		static const char* XML_TAG;
		virtual std::string getXmlTag() const {return XML_TAG;}

	protected:

		std::vector<epc::Relationship> getAllEpcRelationships() const;
		/**
		* Does nothing since StringTableLookup has not got any forward relationship.
		*/
		void importRelationshipSetFromEpc(common::EpcDocument* epcDoc) {}

		// XML backwards relationships
		std::vector<class DasAcquisition*> dasAcquisitionSet;

		friend void DasAcquisition::setFiberOpticalPath(class FiberOpticalPath* fiberOpticalPath);
	};
}

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
#include "resqml2_0_1/GeobodyInterpretation.h"

#include "resqml2_0_1/GeobodyFeature.h"

#include <stdexcept>

using namespace std;
using namespace resqml2_0_1;
using namespace gsoap_resqml2_0_1;
using namespace epc;

const char* GeobodyInterpretation::XML_TAG = "GeobodyInterpretation";

GeobodyInterpretation::GeobodyInterpretation(GeobodyFeature * feature, const string & guid, const string & title)
{
	if (!feature)
		throw invalid_argument("The interpreted feature cannot be null.");

	gsoapProxy2_0_1 = soap_new_resqml2__obj_USCOREGeobodyInterpretation(feature->getGsoapContext(), 1);
	static_cast<_resqml2__GeobodyInterpretation*>(gsoapProxy2_0_1)->Domain = resqml2__Domain__mixed;

	initMandatoryMetadata();
	setMetadata(guid, title, "", -1, "", "", -1, "", "");

	setInterpretedFeature(feature);
}

void GeobodyInterpretation::set3dShape(gsoap_resqml2_0_1::resqml2__Geobody3dShape geobody3dShape)
{
	_resqml2__GeobodyInterpretation* interp = static_cast<_resqml2__GeobodyInterpretation*>(gsoapProxy2_0_1);

	if (!has3dShape()) {
		interp->Geobody3dShape = static_cast<gsoap_resqml2_0_1::resqml2__Geobody3dShape*>(soap_malloc(gsoapProxy2_0_1->soap, sizeof(gsoap_resqml2_0_1::resqml2__Geobody3dShape)));
	}

	*interp->Geobody3dShape = geobody3dShape;
}

bool GeobodyInterpretation::has3dShape() const
{
	return static_cast<_resqml2__GeobodyInterpretation*>(gsoapProxy2_0_1)->Geobody3dShape != nullptr;
}

gsoap_resqml2_0_1::resqml2__Geobody3dShape GeobodyInterpretation::get3dShape() const
{
	if (!has3dShape()) {
		throw invalid_argument("The geobody interpretation has not any 3d shape.");
	}

	return *static_cast<_resqml2__GeobodyInterpretation*>(gsoapProxy2_0_1)->Geobody3dShape;
}

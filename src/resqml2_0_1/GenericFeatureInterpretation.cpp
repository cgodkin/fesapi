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
#include "resqml2_0_1/GenericFeatureInterpretation.h"

#include <stdexcept>

#include "resqml2/AbstractFeature.h"

using namespace RESQML2_0_1_NS;
using namespace gsoap_resqml2_0_1;
using namespace std;
using namespace epc;

const char* GenericFeatureInterpretation::XML_TAG = "GenericFeatureInterpretation";

GenericFeatureInterpretation::GenericFeatureInterpretation(RESQML2_NS::AbstractFeature * feature, const string & guid, const string & title)
{
	if (feature == nullptr) {
		throw invalid_argument("The interpreted feature cannot be null.");
	}

	gsoapProxy2_0_1 = soap_new_resqml2__obj_USCOREGenericFeatureInterpretation(feature->getGsoapContext(), 1);	
	setInterpretedFeature(feature);

	static_cast<_resqml2__GenericFeatureInterpretation*>(gsoapProxy2_0_1)->Domain = resqml2__Domain__mixed;

	initMandatoryMetadata();
	setMetadata(guid, title, "", -1, "", "", -1, "", "");
}


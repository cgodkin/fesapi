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
#include "CulturalFeature.h"

#include <stdexcept>

using namespace std;
using namespace RESQML2_2_NS;
using namespace gsoap_eml2_3;

const char* CulturalFeature::XML_TAG = "CulturalFeature";

CulturalFeature::CulturalFeature(COMMON_NS::DataObjectRepository * repo, const std::string & guid, const string & title,
	gsoap_eml2_3::resqml22__CulturalFeatureKind kind)
{
	if (repo == nullptr)
		throw invalid_argument("The repo cannot be null.");

	gsoapProxy2_3 = soap_new_resqml22__CulturalFeature(repo->getGsoapContext());
	static_cast<_resqml22__CulturalFeature*>(gsoapProxy2_3)->CulturalFeatureKind = soap_resqml22__CulturalFeatureKind2s(gsoapProxy2_3->soap, kind);

	initMandatoryMetadata();
	setMetadata(guid, title, "", -1, "", "", -1, "");

	repo->addOrReplaceDataObject(this);
}

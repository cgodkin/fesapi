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
#include "resqml2_0_1test/WellboreFrameRepresentationTest.h"

#include "catch.hpp"

#include "config.h"
#include "resqml2_0_1test/WellboreInterpretationTest.h"
#include "resqml2_0_1test/WellboreTrajectoryRepresentationTest.h"

#include "resqml2_0_1/WellboreInterpretation.h"
#include "resqml2_0_1/WellboreTrajectoryRepresentation.h"
#include "resqml2_0_1/WellboreMarkerFrameRepresentation.h"
#include "common/AbstractHdfProxy.h"

using namespace std;
using namespace COMMON_NS;
using namespace RESQML2_0_1_NS;
using namespace resqml2_0_1test;

const char* WellboreFrameRepresentationTest::defaultUuid = "0047500b-cf08-47c0-89e0-84f330c7e132";
const char* WellboreFrameRepresentationTest::defaultTitle = "Wellbore Frame Representation";

WellboreFrameRepresentationTest::WellboreFrameRepresentationTest(const string & epcDocPath)
	: AbstractRepresentationTest(epcDocPath, defaultUuid, defaultTitle) {
}

WellboreFrameRepresentationTest::WellboreFrameRepresentationTest(EpcDocument * epcDoc, bool init)
	: AbstractRepresentationTest(epcDoc, defaultUuid, defaultTitle) {
	if (init)
		this->initEpcDoc();
	else
		this->readEpcDoc();
}

void WellboreFrameRepresentationTest::initEpcDocHandler() {
	// creating dependencies
	WellboreInterpretationTest * interpTest = new WellboreInterpretationTest(this->epcDoc, true);
	WellboreTrajectoryRepresentationTest * trajTest = new WellboreTrajectoryRepresentationTest(this->epcDoc, true);

	WellboreInterpretation * interp = static_cast<WellboreInterpretation*>(this->epcDoc->getResqmlAbstractObjectByUuid(WellboreInterpretationTest::defaultUuid));
	WellboreTrajectoryRepresentation * traj = static_cast<WellboreTrajectoryRepresentation*>(this->epcDoc->getResqmlAbstractObjectByUuid(WellboreTrajectoryRepresentationTest::defaultUuid));

	// cleaning
	delete interpTest;
	delete trajTest;

	// getting the hdf proxy
	COMMON_NS::AbstractHdfProxy* hdfProxy = this->epcDoc->getHdfProxySet()[0];
	REQUIRE(hdfProxy != nullptr);

	// WellboreFeature frame
	WellboreFrameRepresentation* w1i1FrameRep = this->epcDoc->createWellboreFrameRepresentation(interp, uuid, title, traj);
	double logMds[5] = { 0, 250, 500, 750, 1200 };
	w1i1FrameRep->setMdValues(logMds, 5, hdfProxy);
}

void WellboreFrameRepresentationTest::readEpcDocHandler() {
	WellboreFrameRepresentation* w1i1FrameRep = this->epcDoc->getResqmlAbstractObjectByUuid<WellboreFrameRepresentation>(defaultUuid);
	REQUIRE(w1i1FrameRep != nullptr);

	REQUIRE(w1i1FrameRep->areMdValuesRegularlySpaced() == false);
	REQUIRE(w1i1FrameRep->getMdValuesCount() == 5);

	double* logMds = new double[w1i1FrameRep->getMdValuesCount()];

	w1i1FrameRep->getMdAsDoubleValues(logMds);
	REQUIRE(logMds[0] == .0);
	REQUIRE(logMds[1] == 250);
	REQUIRE(logMds[2] == 500);
	REQUIRE(logMds[3] == 750);
	REQUIRE(logMds[4] == 1200);

	delete[] logMds;
}


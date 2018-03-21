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

#include "resqml2_0_1/BoundaryFeature.h"

namespace RESQML2_0_1_NS
{
	class DLL_IMPORT_OR_EXPORT GeneticBoundaryFeature : public BoundaryFeature
	{
	protected :

		/**
		* Default constructor
		* Set the gsoap proxy to nullptr from superclass constructor
		*/
		GeneticBoundaryFeature() {}

	public:

		/**
		* Only to be used in partial transfer context
		*/
		GeneticBoundaryFeature(gsoap_resqml2_0_1::eml20__DataObjectReference* partialObject) : BoundaryFeature(partialObject) {}

		/**
		* Creates an instance of this class in a gsoap context.
		* @param soapContext	The soap context where the underlying gsoap proxy is going to be created
		* @param guid			The guid to set to the genetic feature. If empty then a new guid will be generated.
		* @param title			A title for the instance to create.
		* @param isAnHorizon	If true, creates an horizon. If false, creates a geobody boundary
		*/
		GeneticBoundaryFeature(soap* soapContext, const std::string & guid, const std::string & title, bool isAnHorizon);

		GeneticBoundaryFeature(gsoap_resqml2_0_1::_resqml2__GeneticBoundaryFeature* fromGsoap): BoundaryFeature(fromGsoap) {}
		virtual ~GeneticBoundaryFeature() {}
	
		/**
		* Indicates wether the instance is an horizon (or a geobody boundary). This public method is especially needed for SWIG reason.
		*/
		bool isAnHorizon() const;

		/**
		* Sets the age of the isntance.
		*/
		void setAge(const ULONG64 & age);

		/**
		* Indicates if the instance has got an age or not.
		*/
		bool hasAnAge() const;

		/**
		* @return	The age of the horizon.
		*/
		ULONG64 getAge() const;

		static const char* XML_TAG;
		virtual std::string getXmlTag() const {return XML_TAG;}
	};
}


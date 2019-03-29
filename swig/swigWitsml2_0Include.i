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
%{
#include "witsml2_0/Well.h"
#include "witsml2_0/WellCompletion.h"
#include "witsml2_0/Wellbore.h"
#include "witsml2_0/WellboreObject.h"
#include "witsml2_0/WellboreCompletion.h"
#include "witsml2_0/Trajectory.h"
%}

//************************
// STD::VECTOR DEFINITIONS
//************************

%include "std_vector.i"
namespace std {
	%template(WellboreVector) vector<WITSML2_0_NS::Wellbore*>;
	%template(WellCompletionVector) vector<WITSML2_0_NS::WellCompletion*>;
	%template(WellboreCompletionVector) vector<WITSML2_0_NS::WellboreCompletion*>;
}

namespace gsoap_eml2_1
{
	enum eml21__WellStatus { eml21__WellStatus__abandoned = 0, eml21__WellStatus__active = 1, eml21__WellStatus__active_x0020_x002d__x0020injecting = 2, eml21__WellStatus__active_x0020_x002d__x0020producing = 3, eml21__WellStatus__completed = 4, eml21__WellStatus__drilling = 5, eml21__WellStatus__partially_x0020plugged = 6, eml21__WellStatus__permitted = 7, eml21__WellStatus__plugged_x0020and_x0020abandoned = 8, eml21__WellStatus__proposed = 9, eml21__WellStatus__sold = 10, eml21__WellStatus__suspended = 11, eml21__WellStatus__temporarily_x0020abandoned = 12, eml21__WellStatus__testing = 13, eml21__WellStatus__tight = 14, eml21__WellStatus__working_x0020over = 15, eml21__WellStatus__unknown = 16 }; 
	enum witsml2__WellPurpose { witsml2__WellPurpose__appraisal = 0, witsml2__WellPurpose__appraisal_x0020_x002d__x0020confirmation_x0020appraisal = 1, witsml2__WellPurpose__appraisal_x0020_x002d__x0020exploratory_x0020appraisal = 2, witsml2__WellPurpose__exploration = 3, witsml2__WellPurpose__exploration_x0020_x002d__x0020deeper_pool_x0020wildcat = 4, witsml2__WellPurpose__exploration_x0020_x002d__x0020new_field_x0020wildcat = 5, witsml2__WellPurpose__exploration_x0020_x002d__x0020new_pool_x0020wildcat = 6, witsml2__WellPurpose__exploration_x0020_x002d__x0020outpost_x0020wildcat = 7, witsml2__WellPurpose__exploration_x0020_x002d__x0020shallower_pool_x0020wildcat = 8, witsml2__WellPurpose__development = 9, witsml2__WellPurpose__development_x0020_x002d__x0020infill_x0020development = 10, witsml2__WellPurpose__development_x0020_x002d__x0020injector = 11, witsml2__WellPurpose__development_x0020_x002d__x0020producer = 12, witsml2__WellPurpose__fluid_x0020storage = 13, witsml2__WellPurpose__fluid_x0020storage_x0020_x002d__x0020gas_x0020storage = 14, witsml2__WellPurpose__general_x0020srvc = 15, witsml2__WellPurpose__general_x0020srvc_x0020_x002d__x0020borehole_x0020re_acquisition = 16, witsml2__WellPurpose__general_x0020srvc_x0020_x002d__x0020observation = 17, witsml2__WellPurpose__general_x0020srvc_x0020_x002d__x0020relief = 18, witsml2__WellPurpose__general_x0020srvc_x0020_x002d__x0020research = 19, witsml2__WellPurpose__general_x0020srvc_x0020_x002d__x0020research_x0020_x002d__x0020drill_x0020test = 20, witsml2__WellPurpose__general_x0020srvc_x0020_x002d__x0020research_x0020_x002d__x0020strat_x0020test = 21, witsml2__WellPurpose__general_x0020srvc_x0020_x002d__x0020waste_x0020disposal = 22, witsml2__WellPurpose__mineral = 23 };
	enum witsml2__WellFluid { witsml2__WellFluid__air = 0, witsml2__WellFluid__condensate = 1, witsml2__WellFluid__dry = 2, witsml2__WellFluid__gas = 3, witsml2__WellFluid__gas_water = 4, witsml2__WellFluid__non_x0020HC_x0020gas = 5, witsml2__WellFluid__non_x0020HC_x0020gas_x0020_x002d__x0020CO2 = 6, witsml2__WellFluid__oil = 7, witsml2__WellFluid__oil_gas = 8, witsml2__WellFluid__oil_water = 9, witsml2__WellFluid__steam = 10, witsml2__WellFluid__water = 11, witsml2__WellFluid__water_x0020_x002d__x0020brine = 12, witsml2__WellFluid__water_x0020_x002d__x0020fresh_x0020water = 13 };
	enum witsml2__WellDirection { witsml2__WellDirection__huff_n_puff = 0, witsml2__WellDirection__injector = 1, witsml2__WellDirection__producer = 2, witsml2__WellDirection__uncertain = 3 };
	enum eml21__WellboreDatumReference { eml21__WellboreDatumReference__ground_x0020level = 0, eml21__WellboreDatumReference__kelly_x0020bushing = 1, eml21__WellboreDatumReference__mean_x0020sea_x0020level = 2, eml21__WellboreDatumReference__derrick_x0020floor = 3, eml21__WellboreDatumReference__casing_x0020flange = 4, eml21__WellboreDatumReference__crown_x0020valve = 5, eml21__WellboreDatumReference__rotary_x0020bushing = 6, eml21__WellboreDatumReference__rotary_x0020table = 7, eml21__WellboreDatumReference__sea_x0020floor = 8, eml21__WellboreDatumReference__lowest_x0020astronomical_x0020tide = 9, eml21__WellboreDatumReference__mean_x0020higher_x0020high_x0020water = 10, eml21__WellboreDatumReference__mean_x0020high_x0020water = 11, eml21__WellboreDatumReference__mean_x0020lower_x0020low_x0020water = 12, eml21__WellboreDatumReference__mean_x0020low_x0020water = 13, eml21__WellboreDatumReference__mean_x0020tide_x0020level = 14,eml21__WellboreDatumReference__kickoff_x0020point = 15 };
	enum eml21__LengthUom { eml21__LengthUom__m = 'm', eml21__LengthUom__0_x002e1_x0020ft = 'n', eml21__LengthUom__0_x002e1_x0020ft_x005bUS_x005d = 'o', eml21__LengthUom__0_x002e1_x0020in = 'p', eml21__LengthUom__0_x002e1_x0020yd = 'q', eml21__LengthUom__1_x002f16_x0020in = 'r', eml21__LengthUom__1_x002f2_x0020ft = 's', eml21__LengthUom__1_x002f32_x0020in = 't', eml21__LengthUom__1_x002f64_x0020in = 'u', eml21__LengthUom__10_x0020ft = 'v', eml21__LengthUom__10_x0020in = 'w', eml21__LengthUom__10_x0020km = 'x', eml21__LengthUom__100_x0020ft = 'y', eml21__LengthUom__100_x0020km = 'z', eml21__LengthUom__1000_x0020ft = 123, eml21__LengthUom__30_x0020ft = 124, eml21__LengthUom__30_x0020m = 125, eml21__LengthUom__angstrom = 126, eml21__LengthUom__chain = 127, eml21__LengthUom__chain_x005bBnA_x005d = 128, eml21__LengthUom__chain_x005bBnB_x005d = 129, eml21__LengthUom__chain_x005bCla_x005d = 130, eml21__LengthUom__chain_x005bInd37_x005d = 131, eml21__LengthUom__chain_x005bSe_x005d = 132, eml21__LengthUom__chain_x005bSeT_x005d = 133, eml21__LengthUom__chain_x005bUS_x005d = 134, eml21__LengthUom__cm = 135, eml21__LengthUom__dam = 136, eml21__LengthUom__dm = 137, eml21__LengthUom__Em = 138, eml21__LengthUom__fathom = 139, eml21__LengthUom__fm = 140, eml21__LengthUom__ft = 141, eml21__LengthUom__ft_x005bBnA_x005d = 142, eml21__LengthUom__ft_x005bBnB_x005d = 143, eml21__LengthUom__ft_x005bBr36_x005d = 144, eml21__LengthUom__ft_x005bBr65_x005d = 145, eml21__LengthUom__ft_x005bCla_x005d = 146, eml21__LengthUom__ft_x005bGC_x005d = 147, eml21__LengthUom__ft_x005bInd_x005d = 148, eml21__LengthUom__ft_x005bInd37_x005d = 149, eml21__LengthUom__ft_x005bInd62_x005d = 150, eml21__LengthUom__ft_x005bInd75_x005d = 151, eml21__LengthUom__ft_x005bSe_x005d = 152, eml21__LengthUom__ft_x005bSeT_x005d = 153, eml21__LengthUom__ft_x005bUS_x005d = 154, eml21__LengthUom__fur_x005bUS_x005d = 155, eml21__LengthUom__Gm = 156, eml21__LengthUom__hm = 157, eml21__LengthUom__in = 158, eml21__LengthUom__in_x005bUS_x005d = 159, eml21__LengthUom__km = 160, eml21__LengthUom__link = 161, eml21__LengthUom__link_x005bBnA_x005d = 162, eml21__LengthUom__link_x005bBnB_x005d = 163, eml21__LengthUom__link_x005bCla_x005d = 164, eml21__LengthUom__link_x005bSe_x005d = 165, eml21__LengthUom__link_x005bSeT_x005d = 166, eml21__LengthUom__link_x005bUS_x005d = 167, eml21__LengthUom__m_x005bGer_x005d = 168, eml21__LengthUom__mi = 169, eml21__LengthUom__mi_x005bnaut_x005d = 170, eml21__LengthUom__mi_x005bnautUK_x005d = 171, eml21__LengthUom__mi_x005bUS_x005d = 172, eml21__LengthUom__mil = 173, eml21__LengthUom__mm = 174, eml21__LengthUom__Mm = 175, eml21__LengthUom__nm = 176, eml21__LengthUom__pm = 177, eml21__LengthUom__rod_x005bUS_x005d = 178, eml21__LengthUom__Tm = 179, eml21__LengthUom__um = 180, eml21__LengthUom__yd = 181, eml21__LengthUom__yd_x005bBnA_x005d = 182, eml21__LengthUom__yd_x005bBnB_x005d = 183, eml21__LengthUom__yd_x005bCla_x005d = 184, eml21__LengthUom__yd_x005bInd_x005d = 185, eml21__LengthUom__yd_x005bInd37_x005d = 186, eml21__LengthUom__yd_x005bInd62_x005d = 187, eml21__LengthUom__yd_x005bInd75_x005d = 188, eml21__LengthUom__yd_x005bSe_x005d = 189, eml21__LengthUom__yd_x005bSeT_x005d = 190, eml21__LengthUom__yd_x005bUS_x005d = 191 };
	enum eml21__VerticalCoordinateUom { eml21__VerticalCoordinateUom__m = 'm', eml21__VerticalCoordinateUom__ft = 'n', eml21__VerticalCoordinateUom__ftUS = 'o', eml21__VerticalCoordinateUom__ftBr_x002865_x0029 = 'p' };
	enum eml21__PlaneAngleUom { eml21__PlaneAngleUom__0_x002e001_x0020seca = 0, eml21__PlaneAngleUom__ccgr = 1, eml21__PlaneAngleUom__cgr = 2, eml21__PlaneAngleUom__dega = 3, eml21__PlaneAngleUom__gon = 4, eml21__PlaneAngleUom__krad = 5, eml21__PlaneAngleUom__mila = 6, eml21__PlaneAngleUom__mina = 7, eml21__PlaneAngleUom__Mrad = 8, eml21__PlaneAngleUom__mrad = 9, eml21__PlaneAngleUom__rad = 10, eml21__PlaneAngleUom__rev = 11, eml21__PlaneAngleUom__seca = 12, eml21__PlaneAngleUom__urad = 13 };
	enum witsml2__WellboreType { witsml2__WellboreType__bypass = 0, witsml2__WellboreType__initial = 1, witsml2__WellboreType__redrill = 2, witsml2__WellboreType__reentry = 3, witsml2__WellboreType__respud = 4, witsml2__WellboreType__sidetrack = 5 };
	enum witsml2__WellboreShape { witsml2__WellboreShape__build_x0020and_x0020hold = 0, witsml2__WellboreShape__deviated = 1, witsml2__WellboreShape__double_x0020kickoff = 2, witsml2__WellboreShape__horizontal = 3, witsml2__WellboreShape__S_shaped = 4, witsml2__WellboreShape__vertical = 5 };
	enum witsml2__PerforationStatus { witsml2__PerforationStatus__open = 0, witsml2__PerforationStatus__proposed = 1, witsml2__PerforationStatus__squeezed = 2 };
	enum witsml2__ElevCodeEnum { witsml2__ElevCodeEnum__CF = 0, witsml2__ElevCodeEnum__CV = 1, witsml2__ElevCodeEnum__DF = 2, witsml2__ElevCodeEnum__GL = 3, witsml2__ElevCodeEnum__KB = 4, witsml2__ElevCodeEnum__RB = 5, witsml2__ElevCodeEnum__RT = 6, witsml2__ElevCodeEnum__SF = 7, witsml2__ElevCodeEnum__LAT = 8, witsml2__ElevCodeEnum__SL = 9, witsml2__ElevCodeEnum__MHHW = 10, witsml2__ElevCodeEnum__MHW = 11, witsml2__ElevCodeEnum__MLLW = 12, witsml2__ElevCodeEnum__MLW = 13, witsml2__ElevCodeEnum__MTL = 14, witsml2__ElevCodeEnum__KO = 15, witsml2__ElevCodeEnum__unknown = 16};
	enum witsml2__TrajStationType {
		witsml2__TrajStationType__azimuth_x0020on_x0020plane = 0,
		witsml2__TrajStationType__buildrate_x0020to_x0020delta_MD = 1,
		witsml2__TrajStationType__buildrate_x0020to_x0020INCL = 2,
		witsml2__TrajStationType__buildrate_x0020to_x0020MD = 3,
		witsml2__TrajStationType__buildrate_x0020and_x0020turnrate_x0020to_x0020AZI = 4,
		witsml2__TrajStationType__buildrate_x0020and_x0020turnrate_x0020to_x0020delta_MD = 5,
		witsml2__TrajStationType__buildrate_x0020and_x0020turnrate_x0020to_x0020INCL = 6,
		witsml2__TrajStationType__buildrate_x0020and_x0020turnrate_x0020to_x0020INCL_x0020and_x0020AZI = 7,
		witsml2__TrajStationType__buildrate_x0020and_x0020turnrate_x0020to_x0020MD = 8,
		witsml2__TrajStationType__buildrate_x0020and_x0020turnrate_x0020to_x0020TVD = 9,
		witsml2__TrajStationType__buildrate_x0020TVD = 10,
		witsml2__TrajStationType__casing_x0020MD = 11,
		witsml2__TrajStationType__casing_x0020TVD = 12,
		witsml2__TrajStationType__DLS = 13,
		witsml2__TrajStationType__DLS_x0020to_x0020AZI_x0020and_x0020MD = 14,
		witsml2__TrajStationType__DLS_x0020to_x0020AZI_TVD = 15,
		witsml2__TrajStationType__DLS_x0020to_x0020INCL = 16,
		witsml2__TrajStationType__DLS_x0020to_x0020INCL_x0020and_x0020AZI = 17,
		witsml2__TrajStationType__DLS_x0020to_x0020INCL_x0020and_x0020MD = 18,
		witsml2__TrajStationType__DLS_x0020to_x0020INCL_x0020and_x0020TVD = 19,
		witsml2__TrajStationType__DLS_x0020to_x0020NS = 20,
		witsml2__TrajStationType__DLS_x0020and_x0020toolface_x0020to_x0020AZI = 21,
		witsml2__TrajStationType__DLS_x0020and_x0020toolface_x0020to_x0020delta_MD = 22,
		witsml2__TrajStationType__DLS_x0020and_x0020toolface_x0020to_x0020INCL = 23,
		witsml2__TrajStationType__DLS_x0020and_x0020toolface_x0020to_x0020INCL_AZI = 24,
		witsml2__TrajStationType__DLS_x0020and_x0020toolface_x0020to_x0020MD = 25,
		witsml2__TrajStationType__DLS_x0020and_x0020toolface_x0020to_x0020TVD = 26,
		witsml2__TrajStationType__formation_x0020MD = 27,
		witsml2__TrajStationType__formation_x0020TVD = 28,
		witsml2__TrajStationType__hold_x0020to_x0020delta_MD = 29,
		witsml2__TrajStationType__hold_x0020to_x0020MD = 30,
		witsml2__TrajStationType__hold_x0020to_x0020TVD = 31,
		witsml2__TrajStationType__INCL_x0020AZI_x0020and_x0020TVD = 32,
		witsml2__TrajStationType__interpolated = 33,
		witsml2__TrajStationType__marker_x0020MD = 34,
		witsml2__TrajStationType__marker_x0020TVD = 35,
		witsml2__TrajStationType__MD_x0020and_x0020INCL = 36,
		witsml2__TrajStationType__MD_x0020INCL_x0020and_x0020AZI = 37,
		witsml2__TrajStationType__N_x0020E_x0020and_x0020TVD = 38,
		witsml2__TrajStationType__NS_x0020EW_x0020and_x0020TVD = 39,
		witsml2__TrajStationType__target_x0020center = 40,
		witsml2__TrajStationType__target_x0020offset = 41,
		witsml2__TrajStationType__tie_x0020in_x0020point = 42,
		witsml2__TrajStationType__turnrate_x0020to_x0020AZI = 43,
		witsml2__TrajStationType__turnrate_x0020to_x0020delta_MD = 44,
		witsml2__TrajStationType__turnrate_x0020to_x0020MD = 45,
		witsml2__TrajStationType__turnrate_x0020to_x0020TVD = 46,
		witsml2__TrajStationType__unknown = 47
	};
}

//#ifdef SWIGJAVA
//	%include "swigWitsml2_0JavaInclude.i"
//#endif
#ifdef SWIGPYTHON

#endif
//#ifdef SWIGCSHARP
//	%include "swigWitsml2_0CsInclude.i"
//#endif
#if defined(SWIGJAVA) || defined(SWIGCSHARP)
	%nspace WITSML2_0_NS::AbstractObject;
	
	%nspace WITSML2_0_NS::Well;
	%nspace WITSML2_0_NS::WellCompletion;
	
	%nspace WITSML2_0_NS::Wellbore;
	%nspace WITSML2_0_NS::WellboreObject;
	%nspace WITSML2_0_NS::WellboreCompletion;
	%nspace WITSML2_0_NS::Trajectory;
#endif

namespace WITSML2_0_NS
{
	%nodefaultctor; // Disable creation of default constructors

#ifdef SWIGPYTHON
	%rename(Witsml1_4_1_1AbstractObject) AbstractObject;
#endif
	class AbstractObject : public COMMON_NS::AbstractObject
	{
	public:
		std::string getXmlTag() const;
	
		std::string getXmlNamespace() const;

		std::string getContentType() const;

		std::string getPartNameInEpcDocument() const;
	};
	
	class Wellbore;
	class WellCompletion;
	class Well : public AbstractObject
	{
	public:
		void setOperator(const std::string & operator_);

		double getLocationProjectedX(const unsigned int & locationIndex);
		double getLocationProjectedY(const unsigned int & locationIndex);

		void pushBackLocation(
			const std::string & guid,
			const double & projectedX,
			const double & projectedY,
			const unsigned int & projectedCrsEpsgCode);

		unsigned int geLocationCount() const;
		
		void pushBackDatum(
			const std::string & guid, 
			const std::string & title,
			gsoap_eml2_1::eml21__WellboreDatumReference code,
			const std::string & datum,
			gsoap_eml2_1::eml21__LengthUom elevationUnit,
			const double & elevation,
			const unsigned int & verticalCrsEpsgCode);

		unsigned int getDatumCount() const;
		
		RESQML2_0_1_NS::WellboreFeature* getResqmlWellboreFeature() const { return resqmlWellboreFeature; }
		
		const std::vector<class Wellbore*>& getWellbores() const;

		const std::vector<class WellCompletion*>& getWellcompletions();
	};
	
	class WellboreCompletion;
	class Trajectory;
	class Wellbore : public AbstractObject 
	{
	public:
		class Well* getWell() const;

		void setWell(class Well* witsmlWell);

		RESQML2_0_1_NS::WellboreFeature* getResqmlWellboreFeature() const;

		const std::vector<class WellboreCompletion *>& getWellboreCompletions() const;
		const std::vector<class Trajectory *>& getTrajectories() const;

		void setShape(const gsoap_eml2_1::witsml2__WellboreShape & shape);
	};
	
	class WellboreCompletion;
	class WellCompletion : public AbstractObject
	{
	public:
		
		class Well* getWell() const;

		void setWell(class Well* witsmlWell);
		
		const std::vector<class WellboreCompletion*>& getWellboreCompletions() const;
	};
	
	class WellboreObject : public AbstractObject
	{
	public:
		Wellbore* getWellbore() const;
		virtual void setWellbore(class Wellbore* witsmlWellbore) = 0;
	};
	
	class WellboreCompletion : public WellboreObject
	{
	public:
		class Wellbore* getWellbore() const;

		class WellCompletion* getWellCompletion() const;
		void setWellCompletion(class WellCompletion* wellCompletion);

		void pushBackPerforation(const std::string & datum,
			gsoap_eml2_1::eml21__LengthUom MdUnit,
			const double & TopMd,
			const double & BaseMd, 
			const std::string & guid = "");

		void pushBackPerforationHistory(unsigned int index,
			gsoap_eml2_1::witsml2__PerforationStatus perforationStatus,
			const std::string & datum,
			gsoap_eml2_1::eml21__LengthUom MdUnit,
			const double & TopMd,
			const double & BaseMd, 
			const time_t & startDate = -1,
			const time_t & endDate = -1,
			const std::string & guid = "");

		unsigned int getPerforationCount() const;

		bool hasPerforationMdDatum(unsigned int index) const;
	
		std::string getPerforationMdDatum(unsigned int index) const;
		
		bool hasPerforationMdUnit(unsigned int index) const;
		
		gsoap_eml2_1::eml21__LengthUom getPerforationMdUnit(unsigned int index) const;
		
		bool hasPerforationTopMd(unsigned int index) const;
		
		double getPerforationTopMd(unsigned int index) const;

		bool hasPerforationBaseMd(unsigned int index) const;

		double getPerforationBaseMd(unsigned int index) const;

		unsigned int getPerforationHistoryCount(unsigned int index) const;

		bool hasPerforationHistoryStatus(unsigned int historyIndex,
			unsigned int perforationIndex) const;

		gsoap_eml2_1::witsml2__PerforationStatus getPerforationHistoryStatus(unsigned int historyIndex,
			unsigned int perforationIndex) const;

		std::string getPerforationHistoryStatusToString(unsigned int historyIndex,
			unsigned int perforationIndex) const;

		bool hasPerforationHistoryStartDate(unsigned int historyIndex,
			unsigned int perforationIndex) const;

		time_t getPerforationHistoryStartDate(unsigned int historyIndex,
			unsigned int perforationIndex) const;

		bool hasPerforationHistoryEndDate(unsigned int historyIndex,
			unsigned int perforationIndex) const;

		time_t getPerforationHistoryEndDate(unsigned int historyIndex,
			unsigned int perforationIndex) const;
		
		bool hasPerforationHistoryMdDatum(unsigned int historyIndex,
			unsigned int perforationIndex) const;
		
		std::string getPerforationHistoryMdDatum(unsigned int historyIndex,
			unsigned int perforationIndex) const;
		
		bool hasPerforationHistoryMdUnit(unsigned int historyIndex,
			unsigned int perforationIndex) const;

		gsoap_eml2_1::eml21__LengthUom getPerforationHistoryMdUnit(unsigned int historyIndex,
			unsigned int perforationIndex) const;

		bool hasPerforationHistoryTopMd(unsigned int historyIndex,
			unsigned int perforationIndex) const;

		double getPerforationHistoryTopMd(unsigned int historyIndex,
			unsigned int perforationIndex) const;
		
		bool hasPerforationHistoryBaseMd(unsigned int historyIndex,
			unsigned int perforationIndex) const;

		double getPerforationHistoryBaseMd(unsigned int historyIndex,
			unsigned int perforationIndex) const;
	};
	
	class Trajectory : public WellboreObject
	{
	public:
		void pushBackTrajectoryStation(gsoap_eml2_1::witsml2__TrajStationType kind, double mdValue, gsoap_eml2_1::eml21__LengthUom uom, const std::string & uid = "");
		unsigned int getTrajectoryStationCount() const;
	};
}


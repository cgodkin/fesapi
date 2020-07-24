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
#include "../src/prodml2_1/FluidSystem.h"
#include "../src/prodml2_1/FluidCharacterization.h"
%}

namespace std {
	%template(FluidSystemVector) vector<PRODML2_1_NS::FluidSystem*>;
	%template(FluidCharacterizationVector) vector<PRODML2_1_NS::FluidCharacterization*>;
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
	%nspace PRODML2_1_NS::FluidSystem;
	%nspace PRODML2_1_NS::FluidCharacterization;
#endif

namespace gsoap_eml2_2
{
	enum eml22__AmountOfSubstancePerAmountOfSubstanceUom {
		eml22__AmountOfSubstancePerAmountOfSubstanceUom___x0025 = 0,
		eml22__AmountOfSubstancePerAmountOfSubstanceUom___x0025_x005bmolar_x005d = 1,
		eml22__AmountOfSubstancePerAmountOfSubstanceUom__Euc = 2,
		eml22__AmountOfSubstancePerAmountOfSubstanceUom__mol_x002fmol = 3,
		eml22__AmountOfSubstancePerAmountOfSubstanceUom__nEuc = 4,
		eml22__AmountOfSubstancePerAmountOfSubstanceUom__ppk = 5,
		eml22__AmountOfSubstancePerAmountOfSubstanceUom__ppm = 6
	};

	enum eml22__ThermodynamicTemperatureUom {
		eml22__ThermodynamicTemperatureUom__K = 'K',
		eml22__ThermodynamicTemperatureUom__degC = 'L',
		eml22__ThermodynamicTemperatureUom__degF = 'M',
		eml22__ThermodynamicTemperatureUom__degR = 'N'
	};
	
	enum eml22__PressureUom {
		eml22__PressureUom__0_x002e01_x0020lbf_x002fft2 = 0,
		eml22__PressureUom__at = 1,
		eml22__PressureUom__atm = 2,
		eml22__PressureUom__bar = 3,
		eml22__PressureUom__cmH2O_x005b4degC_x005d = 4,
		eml22__PressureUom__cPa = 5,
		eml22__PressureUom__dPa = 6,
		eml22__PressureUom__dyne_x002fcm2 = 7,
		eml22__PressureUom__EPa = 8,
		eml22__PressureUom__fPa = 9,
		eml22__PressureUom__GPa = 10,
		eml22__PressureUom__hbar = 11,
		eml22__PressureUom__inH2O_x005b39degF_x005d = 12,
		eml22__PressureUom__inH2O_x005b60degF_x005d = 13,
		eml22__PressureUom__inHg_x005b32degF_x005d = 14,
		eml22__PressureUom__inHg_x005b60degF_x005d = 15,
		eml22__PressureUom__kgf_x002fcm2 = 16,
		eml22__PressureUom__kgf_x002fm2 = 17,
		eml22__PressureUom__kgf_x002fmm2 = 18,
		eml22__PressureUom__kN_x002fm2 = 19,
		eml22__PressureUom__kPa = 20,
		eml22__PressureUom__kpsi = 21,
		eml22__PressureUom__lbf_x002fft2 = 22,
		eml22__PressureUom__mbar = 23,
		eml22__PressureUom__mmHg_x005b0degC_x005d = 24,
		eml22__PressureUom__mPa = 25,
		eml22__PressureUom__MPa = 26,
		eml22__PressureUom__Mpsi = 27,
		eml22__PressureUom__N_x002fm2 = 28,
		eml22__PressureUom__N_x002fmm2 = 29,
		eml22__PressureUom__nPa = 30,
		eml22__PressureUom__Pa = 31,
		eml22__PressureUom__pPa = 32,
		eml22__PressureUom__psi = 33,
		eml22__PressureUom__tonf_x005bUK_x005d_x002fft2 = 34,
		eml22__PressureUom__tonf_x005bUS_x005d_x002fft2 = 35,
		eml22__PressureUom__tonf_x005bUS_x005d_x002fin2 = 36,
		eml22__PressureUom__torr = 37,
		eml22__PressureUom__TPa = 38,
		eml22__PressureUom__ubar = 39,
		eml22__PressureUom__umHg_x005b0degC_x005d = 40,
		eml22__PressureUom__uPa = 41,
		eml22__PressureUom__upsi = 42
	};
	
	enum prodml21__ReservoirFluidKind {
		prodml21__ReservoirFluidKind__black_x0020oil = 0,
		prodml21__ReservoirFluidKind__critical_x0020or_x0020near_x0020critical = 1,
		prodml21__ReservoirFluidKind__dry_x0020gas = 2,
		prodml21__ReservoirFluidKind__heavy_x0020oil = 3,
		prodml21__ReservoirFluidKind__wet_x0020gas_x0020or_x0020condensate = 4,
		prodml21__ReservoirFluidKind__volatile_x0020oil = 5,
		prodml21__ReservoirFluidKind__unknown = 6
	};
	
	enum eml22__VolumePerVolumeUom {
		eml22__VolumePerVolumeUom___x0025 = 0,
		eml22__VolumePerVolumeUom___x0025_x005bvol_x005d = 1,
		eml22__VolumePerVolumeUom__0_x002e001_x0020bbl_x002fft3 = 2,
		eml22__VolumePerVolumeUom__0_x002e001_x0020bbl_x002fm3 = 3,
		eml22__VolumePerVolumeUom__0_x002e001_x0020gal_x005bUK_x005d_x002fbbl = 4,
		eml22__VolumePerVolumeUom__0_x002e001_x0020gal_x005bUK_x005d_x002fgal_x005bUK_x005d = 5,
		eml22__VolumePerVolumeUom__0_x002e001_x0020gal_x005bUS_x005d_x002fbbl = 6,
		eml22__VolumePerVolumeUom__0_x002e001_x0020gal_x005bUS_x005d_x002fft3 = 7,
		eml22__VolumePerVolumeUom__0_x002e001_x0020gal_x005bUS_x005d_x002fgal_x005bUS_x005d = 8,
		eml22__VolumePerVolumeUom__0_x002e001_x0020pt_x005bUK_x005d_x002fbbl = 9,
		eml22__VolumePerVolumeUom__0_x002e01_x0020bbl_x002fbbl = 10,
		eml22__VolumePerVolumeUom__0_x002e1_x0020gal_x005bUS_x005d_x002fbbl = 11,
		eml22__VolumePerVolumeUom__0_x002e1_x0020L_x002fbbl = 12,
		eml22__VolumePerVolumeUom__0_x002e1_x0020pt_x005bUS_x005d_x002fbbl = 13,
		eml22__VolumePerVolumeUom__1000_x0020ft3_x002fbbl = 14,
		eml22__VolumePerVolumeUom__1000_x0020m3_x002fm3 = 15,
		eml22__VolumePerVolumeUom__1E_6_x0020acre_x002eft_x002fbbl = 16,
		eml22__VolumePerVolumeUom__1E_6_x0020bbl_x002fft3 = 17,
		eml22__VolumePerVolumeUom__1E_6_x0020bbl_x002fm3 = 18,
		eml22__VolumePerVolumeUom__1E6_x0020bbl_x002f_x0028acre_x002eft_x0029 = 19,
		eml22__VolumePerVolumeUom__1E6_x0020ft3_x002f_x0028acre_x002eft_x0029 = 20,
		eml22__VolumePerVolumeUom__1E6_x0020ft3_x002fbbl = 21,
		eml22__VolumePerVolumeUom__bbl_x002f_x0028acre_x002eft_x0029 = 22,
		eml22__VolumePerVolumeUom__bbl_x002fbbl = 23,
		eml22__VolumePerVolumeUom__bbl_x002fft3 = 24,
		eml22__VolumePerVolumeUom__bbl_x002fm3 = 25,
		eml22__VolumePerVolumeUom__cEuc = 26,
		eml22__VolumePerVolumeUom__cm3_x002fcm3 = 27,
		eml22__VolumePerVolumeUom__cm3_x002fL = 28,
		eml22__VolumePerVolumeUom__cm3_x002fm3 = 29,
		eml22__VolumePerVolumeUom__dm3_x002fm3 = 30,
		eml22__VolumePerVolumeUom__Euc = 31,
		eml22__VolumePerVolumeUom__ft3_x002fbbl = 32,
		eml22__VolumePerVolumeUom__ft3_x002fft3 = 33,
		eml22__VolumePerVolumeUom__gal_x005bUK_x005d_x002fft3 = 34,
		eml22__VolumePerVolumeUom__gal_x005bUS_x005d_x002fbbl = 35,
		eml22__VolumePerVolumeUom__gal_x005bUS_x005d_x002fft3 = 36,
		eml22__VolumePerVolumeUom__L_x002fm3 = 37,
		eml22__VolumePerVolumeUom__m3_x002f_x0028ha_x002em_x0029 = 38,
		eml22__VolumePerVolumeUom__m3_x002fbbl = 39,
		eml22__VolumePerVolumeUom__m3_x002fm3 = 40,
		eml22__VolumePerVolumeUom__mL_x002fgal_x005bUK_x005d = 41,
		eml22__VolumePerVolumeUom__mL_x002fgal_x005bUS_x005d = 42,
		eml22__VolumePerVolumeUom__mL_x002fmL = 43,
		eml22__VolumePerVolumeUom__ppk = 44,
		eml22__VolumePerVolumeUom__ppm = 45,
		eml22__VolumePerVolumeUom__ppm_x005bvol_x005d = 46
	};
	
	enum eml22__MassPerMassUom {
		eml22__MassPerMassUom___x0025 = 0,
		eml22__MassPerMassUom___x0025_x005bmass_x005d = 1,
		eml22__MassPerMassUom__Euc = 2,
		eml22__MassPerMassUom__g_x002fkg = 3,
		eml22__MassPerMassUom__g_x002ft = 4,
		eml22__MassPerMassUom__kg_x002fkg = 5,
		eml22__MassPerMassUom__kg_x002fsack_x005b94lbm_x005d = 6,
		eml22__MassPerMassUom__kg_x002ft = 7,
		eml22__MassPerMassUom__mg_x002fg = 8,
		eml22__MassPerMassUom__mg_x002fkg = 9,
		eml22__MassPerMassUom__ng_x002fg = 10,
		eml22__MassPerMassUom__ng_x002fmg = 11,
		eml22__MassPerMassUom__ppk = 12,
		eml22__MassPerMassUom__ppm = 13,
		eml22__MassPerMassUom__ppm_x005bmass_x005d = 14,
		eml22__MassPerMassUom__ug_x002fg = 15,
		eml22__MassPerMassUom__ug_x002fmg = 16
	};
	
	enum prodml21__PureComponentEnum {
		prodml21__PureComponentEnum__1_2_4_trimethylbenzene = 0,
		prodml21__PureComponentEnum__2_dimethylbutane = 1,
		prodml21__PureComponentEnum__3_dimethylbutane = 2,
		prodml21__PureComponentEnum__ar = 3,
		prodml21__PureComponentEnum__c1 = 4,
		prodml21__PureComponentEnum__c2 = 5,
		prodml21__PureComponentEnum__c3 = 6,
		prodml21__PureComponentEnum__co2 = 7,
		prodml21__PureComponentEnum__h2 = 8,
		prodml21__PureComponentEnum__h2o = 9,
		prodml21__PureComponentEnum__h2s = 10,
		prodml21__PureComponentEnum__he = 11,
		prodml21__PureComponentEnum__hg = 12,
		prodml21__PureComponentEnum__i_c4 = 13,
		prodml21__PureComponentEnum__i_c5 = 14,
		prodml21__PureComponentEnum__n2 = 15,
		prodml21__PureComponentEnum__n_c10 = 16,
		prodml21__PureComponentEnum__n_c4 = 17,
		prodml21__PureComponentEnum__n_c5 = 18,
		prodml21__PureComponentEnum__n_c6 = 19,
		prodml21__PureComponentEnum__n_c7 = 20,
		prodml21__PureComponentEnum__n_c8 = 21,
		prodml21__PureComponentEnum__n_c9 = 22,
		prodml21__PureComponentEnum__neo_c5 = 23,
		prodml21__PureComponentEnum__benzene = 24,
		prodml21__PureComponentEnum__2_methylpentane = 25,
		prodml21__PureComponentEnum__3_methylpentane = 26,
		prodml21__PureComponentEnum__2_methylhexane = 27,
		prodml21__PureComponentEnum__3_methylhexane = 28,
		prodml21__PureComponentEnum__2_methylheptane = 29,
		prodml21__PureComponentEnum__3_methylheptane = 30,
		prodml21__PureComponentEnum__cyclohexane = 31,
		prodml21__PureComponentEnum__ethylbenzene = 32,
		prodml21__PureComponentEnum__ethylcyclohexane = 33,
		prodml21__PureComponentEnum__methylcyclohexane = 34,
		prodml21__PureComponentEnum__methylcyclopentane = 35,
		prodml21__PureComponentEnum__toluene = 36,
		prodml21__PureComponentEnum__m_xylene = 37,
		prodml21__PureComponentEnum__o_xylene = 38,
		prodml21__PureComponentEnum__p_xylene = 39
	};

	enum eml22__MolecularWeightUom {
		eml22__MolecularWeightUom__g_x002fmol = 0,
		eml22__MolecularWeightUom__kg_x002fmol = 1,
		eml22__MolecularWeightUom__lbm_x002flbmol = 2
	};
	
	enum prodml21__PlusComponentEnum {
		prodml21__PlusComponentEnum__c10_x002b = 0,
		prodml21__PlusComponentEnum__c11_x002b = 1,
		prodml21__PlusComponentEnum__c12_x002b = 2,
		prodml21__PlusComponentEnum__c20_x002b = 3,
		prodml21__PlusComponentEnum__c25_x002b = 4,
		prodml21__PlusComponentEnum__c30_x002b = 5,
		prodml21__PlusComponentEnum__c36_x002b = 6,
		prodml21__PlusComponentEnum__c5_x002b = 7,
		prodml21__PlusComponentEnum__c6_x002b = 8,
		prodml21__PlusComponentEnum__c7_x002b = 9,
		prodml21__PlusComponentEnum__c8_x002b = 10,
		prodml21__PlusComponentEnum__c9_x002b = 11
	};
	
	enum eml22__APIGravityUom {
		eml22__APIGravityUom__dAPI = 0
	};
	
	enum eml22__EnergyPerMassUom {
		eml22__EnergyPerMassUom__Btu_x005bIT_x005d_x002flbm = 0,
		eml22__EnergyPerMassUom__cal_x005bth_x005d_x002fg = 1,
		eml22__EnergyPerMassUom__cal_x005bth_x005d_x002fkg = 2,
		eml22__EnergyPerMassUom__cal_x005bth_x005d_x002flbm = 3,
		eml22__EnergyPerMassUom__erg_x002fg = 4,
		eml22__EnergyPerMassUom__erg_x002fkg = 5,
		eml22__EnergyPerMassUom__hp_x002eh_x002flbm = 6,
		eml22__EnergyPerMassUom__J_x002fg = 7,
		eml22__EnergyPerMassUom__J_x002fkg = 8,
		eml22__EnergyPerMassUom__kcal_x005bth_x005d_x002fg = 9,
		eml22__EnergyPerMassUom__kcal_x005bth_x005d_x002fkg = 10,
		eml22__EnergyPerMassUom__kJ_x002fkg = 11,
		eml22__EnergyPerMassUom__kW_x002eh_x002fkg = 12,
		eml22__EnergyPerMassUom__lbf_x002eft_x002flbm = 13,
		eml22__EnergyPerMassUom__MJ_x002fkg = 14,
		eml22__EnergyPerMassUom__MW_x002eh_x002fkg = 15
	};
	
	enum eml22__EnergyPerVolumeUom {
		eml22__EnergyPerVolumeUom__Btu_x005bIT_x005d_x002fbbl = 0,
		eml22__EnergyPerVolumeUom__Btu_x005bIT_x005d_x002fft3 = 1,
		eml22__EnergyPerVolumeUom__Btu_x005bIT_x005d_x002fgal_x005bUK_x005d = 2,
		eml22__EnergyPerVolumeUom__Btu_x005bIT_x005d_x002fgal_x005bUS_x005d = 3,
		eml22__EnergyPerVolumeUom__cal_x005bth_x005d_x002fcm3 = 4,
		eml22__EnergyPerVolumeUom__cal_x005bth_x005d_x002fmL = 5,
		eml22__EnergyPerVolumeUom__cal_x005bth_x005d_x002fmm3 = 6,
		eml22__EnergyPerVolumeUom__erg_x002fcm3 = 7,
		eml22__EnergyPerVolumeUom__erg_x002fm3 = 8,
		eml22__EnergyPerVolumeUom__hp_x002eh_x002fbbl = 9,
		eml22__EnergyPerVolumeUom__J_x002fdm3 = 10,
		eml22__EnergyPerVolumeUom__J_x002fm3 = 11,
		eml22__EnergyPerVolumeUom__kcal_x005bth_x005d_x002fcm3 = 12,
		eml22__EnergyPerVolumeUom__kcal_x005bth_x005d_x002fm3 = 13,
		eml22__EnergyPerVolumeUom__kJ_x002fdm3 = 14,
		eml22__EnergyPerVolumeUom__kJ_x002fm3 = 15,
		eml22__EnergyPerVolumeUom__kW_x002eh_x002fdm3 = 16,
		eml22__EnergyPerVolumeUom__kW_x002eh_x002fm3 = 17,
		eml22__EnergyPerVolumeUom__lbf_x002eft_x002fbbl = 18,
		eml22__EnergyPerVolumeUom__lbf_x002eft_x002fgal_x005bUS_x005d = 19,
		eml22__EnergyPerVolumeUom__MJ_x002fm3 = 20,
		eml22__EnergyPerVolumeUom__MW_x002eh_x002fm3 = 21,
		eml22__EnergyPerVolumeUom__tonf_x005bUS_x005d_x002emi_x002fbbl = 22
	};
	
	enum prodml21__PseudoComponentEnum {
		prodml21__PseudoComponentEnum__c10 = 0,
		prodml21__PseudoComponentEnum__c11 = 1,
		prodml21__PseudoComponentEnum__c12 = 2,
		prodml21__PseudoComponentEnum__c13 = 3,
		prodml21__PseudoComponentEnum__c14 = 4,
		prodml21__PseudoComponentEnum__c15 = 5,
		prodml21__PseudoComponentEnum__c16 = 6,
		prodml21__PseudoComponentEnum__c17 = 7,
		prodml21__PseudoComponentEnum__c18 = 8,
		prodml21__PseudoComponentEnum__c19 = 9,
		prodml21__PseudoComponentEnum__c20 = 10,
		prodml21__PseudoComponentEnum__c21 = 11,
		prodml21__PseudoComponentEnum__c22 = 12,
		prodml21__PseudoComponentEnum__c23 = 13,
		prodml21__PseudoComponentEnum__c24 = 14,
		prodml21__PseudoComponentEnum__c25 = 15,
		prodml21__PseudoComponentEnum__c26 = 16,
		prodml21__PseudoComponentEnum__c27 = 17,
		prodml21__PseudoComponentEnum__c28 = 18,
		prodml21__PseudoComponentEnum__c29 = 19,
		prodml21__PseudoComponentEnum__c2_c4_x002bn2 = 20,
		prodml21__PseudoComponentEnum__c30 = 21,
		prodml21__PseudoComponentEnum__c31 = 22,
		prodml21__PseudoComponentEnum__c32 = 23,
		prodml21__PseudoComponentEnum__c33 = 24,
		prodml21__PseudoComponentEnum__c34 = 25,
		prodml21__PseudoComponentEnum__c35 = 26,
		prodml21__PseudoComponentEnum__c4 = 27,
		prodml21__PseudoComponentEnum__c5 = 28,
		prodml21__PseudoComponentEnum__c6 = 29,
		prodml21__PseudoComponentEnum__c7 = 30,
		prodml21__PseudoComponentEnum__c8 = 31,
		prodml21__PseudoComponentEnum__c9 = 32
	};
		
	enum prodml21__OutputFluidProperty {
		prodml21__OutputFluidProperty__Compressibility = 0,
		prodml21__OutputFluidProperty__Density = 1,
		prodml21__OutputFluidProperty__Derivative_x0020of_x0020Density_x0020w_x002er_x002et_x0020Pressure = 2,
		prodml21__OutputFluidProperty__Derivative_x0020of_x0020Density_x0020w_x002er_x002et_x0020Temperature = 3,
		prodml21__OutputFluidProperty__Enthalpy = 4,
		prodml21__OutputFluidProperty__Entropy = 5,
		prodml21__OutputFluidProperty__Expansion_x0020Factor = 6,
		prodml21__OutputFluidProperty__Formation_x0020Volume_x0020Factor = 7,
		prodml21__OutputFluidProperty__Gas_Oil_x0020Interfacial_x0020Tension = 8,
		prodml21__OutputFluidProperty__Gas_Water_x0020Interfacial_x0020Tension = 9,
		prodml21__OutputFluidProperty__Index = 10,
		prodml21__OutputFluidProperty__K_x0020value = 11,
		prodml21__OutputFluidProperty__Misc_x0020Bank_x0020Critical_x0020Solvent_x0020Saturation = 12,
		prodml21__OutputFluidProperty__Misc_x0020Bank_x0020Phase_x0020Density = 13,
		prodml21__OutputFluidProperty__Misc_x0020Bank_x0020Phase_x0020Viscosity = 14,
		prodml21__OutputFluidProperty__Miscibility_x0020Parameter_x0020_x0028Alpha_x0029 = 15,
		prodml21__OutputFluidProperty__Mixing_x0020Parameter_x0020Oil_Gas = 16,
		prodml21__OutputFluidProperty__Normalized_x0020Pseudo_x0020Pressure = 17,
		prodml21__OutputFluidProperty__Oil_Gas_x0020Ratio = 18,
		prodml21__OutputFluidProperty__Oil_Water_x0020Interfacial_x0020Tension = 19,
		prodml21__OutputFluidProperty__Parachor = 20,
		prodml21__OutputFluidProperty__Pressure = 21,
		prodml21__OutputFluidProperty__Pseudo_x0020Pressure = 22,
		prodml21__OutputFluidProperty__P_T_x0020Cross_x0020Term = 23,
		prodml21__OutputFluidProperty__Saturation_x0020Pressure = 24,
		prodml21__OutputFluidProperty__Solution_x0020GOR = 25,
		prodml21__OutputFluidProperty__Solvent_x0020Density = 26,
		prodml21__OutputFluidProperty__Specific_x0020Heat = 27,
		prodml21__OutputFluidProperty__Temperature = 28,
		prodml21__OutputFluidProperty__Thermal_x0020Conductivity = 29,
		prodml21__OutputFluidProperty__Viscosity = 30,
		prodml21__OutputFluidProperty__Viscosity_x0020Compressibility = 31,
		prodml21__OutputFluidProperty__Water_x0020vapor_x0020mass_x0020fraction_x0020in_x0020gas_x0020phase = 32,
		prodml21__OutputFluidProperty__Z_x0020Factor = 33
	};
}

#define GETTER_FLUID_COMPONENT_ATTRIBUTE(vectorName, attributeName, attributeDatatype)\
	attributeDatatype get##vectorName##attributeName(unsigned int index) const;

#define GETTER_AND_SETTER_FLUID_COMPONENT_OPTIONAL_ATTRIBUTE(vectorName, attributeName, attributeDatatype)\
	void set##vectorName##attributeName(unsigned int index, const attributeDatatype& value);\
	bool has##vectorName##attributeName(unsigned int index);\
	attributeDatatype get##vectorName##attributeName(unsigned int index) const;

#define GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(vectorName, attributeName, uomDatatype)\
	void set##vectorName##attributeName(unsigned int index, double value, uomDatatype uom);\
	double has##vectorName##attributeName(unsigned int index) const;\
	double get##vectorName##attributeName##Value(unsigned int index) const;\
	uomDatatype get##vectorName##attributeName##Uom(unsigned int index) const;

#define GETTER_AND_SETTER_FLUID_COMPONENT_COMMON_ATTRIBUTES(vectorName)\
	GETTER_FLUID_COMPONENT_ATTRIBUTE(vectorName, uid, std::string)\
	GETTER_AND_SETTER_FLUID_COMPONENT_OPTIONAL_ATTRIBUTE(vectorName, Remark, std::string)\
	GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(vectorName, MassFraction, gsoap_eml2_2::eml22__MassPerMassUom)\
	GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(vectorName, MoleFraction, gsoap_eml2_2::eml22__AmountOfSubstancePerAmountOfSubstanceUom)

namespace PRODML2_1_NS
{
	%nodefaultctor; // Disable creation of default constructors

	class FluidSystem : public COMMON_NS::AbstractObject
	{
	public:
		gsoap_eml2_2::prodml21__ReservoirFluidKind getReservoirFluidKind() const;
	};
	
	/**
	 * The fluid characterization data object describes the characteristics and properties of a
	 * fluid sample or fluid system under the conditions expected in a historical or future state.
	 * Three basic formats are available to represent fluid characterization results for delivery to
	 * consumer applications:  
	 * - Model (model kind + parameters)
	 * - Tabular
	 * - Set of Fluid Characterization Parameters
	 */
	class FluidCharacterization : public COMMON_NS::AbstractObject
	{
	public:
		/**
		 * Sets standard conditions
		 *
		 * @param 	temperatureValue	The temperature value.
		 * @param 	temperatureUom  	The temperature uom.
		 * @param 	pressureValue   	The pressure value.
		 * @param 	pressureUom			The pressure uom.
		 */
		void setStandardConditions(double temperatureValue, gsoap_eml2_2::eml22__ThermodynamicTemperatureUom temperatureUom,
			double pressureValue, gsoap_eml2_2::eml22__PressureUom pressureUom);

		/**
		 * Query if this object has standard conditions
		 *
		 * @returns	True if standard conditions, false if not.
		 */
		bool hasStandardConditions() const;

		/**
		 * Gets standard temperature value
		 *
		 * @returns	The standard temperature value.
		 */
		double getStandardTemperatureValue() const;

		/**
		 * Gets standard temperature uom
		 *
		 * @returns	The standard temperature uom.
		 */
		gsoap_eml2_2::eml22__ThermodynamicTemperatureUom getStandardTemperatureUom() const;

		/**
		 * Gets standard pressure value
		 *
		 * @returns	The standard pressure value.
		 */
		double getStandardPressureValue() const;

		/**
		 * Gets standard pressure uom
		 *
		 * @returns	The standard pressure uom.
		 */
		gsoap_eml2_2::eml22__PressureUom getStandardPressureUom() const;
		
		/**
		 * Gets rock fluid unit
		 *
		 * @returns	Null if it fails, else the rock fluid unit.
		 */
		RESQML2_NS::RockFluidUnitInterpretation* getRockFluidUnit() const;
		
		/**
		 * Gets formation water count
		 *
		 * @returns	The formation water count.
		 */
		unsigned int getFormationWaterCount() const;

		/**
		 * Pushes a back formation water
		 *
		 * @param 	uid	The UID.
		 */
		void pushBackFormationWater(const std::string & uid);
		GETTER_AND_SETTER_FLUID_COMPONENT_COMMON_ATTRIBUTES(FormationWater)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(FormationWater, Salinity, gsoap_eml2_2::eml22__MassPerMassUom)
		GETTER_AND_SETTER_FLUID_COMPONENT_OPTIONAL_ATTRIBUTE(FormationWater, SpecificGravity, double)

		/**
		 * Gets pure fluid component count
		 *
		 * @returns	The pure fluid component count.
		 */
		unsigned int getPureFluidComponentCount() const;

		/**
		 * Pushes a back pure fluid component
		 *
		 * @param 	uid			   	The UID.
		 * @param 	kind		   	The kind.
		 * @param 	hydrocarbonFlag	True to hydrocarbon flag.
		 */
		void pushBackPureFluidComponent(const std::string & uid, gsoap_eml2_2::prodml21__PureComponentEnum kind, bool hydrocarbonFlag);
		GETTER_AND_SETTER_FLUID_COMPONENT_COMMON_ATTRIBUTES(PureFluidComponent)
		GETTER_FLUID_COMPONENT_ATTRIBUTE(PureFluidComponent, Kind, std::string)
		GETTER_FLUID_COMPONENT_ATTRIBUTE(PureFluidComponent, HydrocarbonFlag, bool)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(PureFluidComponent, MolecularWeight, gsoap_eml2_2::eml22__MolecularWeightUom)

		/**
		 * Gets plus fluid component count
		 *
		 * @returns	The plus fluid component count.
		 */
		unsigned int getPlusFluidComponentCount() const;

		/**
		 * Pushes a back plus fluid component
		 *
		 * @param 	uid 	The UID.
		 * @param 	kind	The kind.
		 */
		void pushBackPlusFluidComponent(const std::string & uid, gsoap_eml2_2::prodml21__PlusComponentEnum kind);
		GETTER_AND_SETTER_FLUID_COMPONENT_COMMON_ATTRIBUTES(PlusFluidComponent)
		GETTER_AND_SETTER_FLUID_COMPONENT_OPTIONAL_ATTRIBUTE(PlusFluidComponent, SpecificGravity, double)
		GETTER_AND_SETTER_FLUID_COMPONENT_OPTIONAL_ATTRIBUTE(PlusFluidComponent, StartingCarbonNumber, ULONG64)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(PlusFluidComponent, StartingBoilingPoint, gsoap_eml2_2::eml22__ThermodynamicTemperatureUom)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(PlusFluidComponent, AvgDensity, std::string)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(PlusFluidComponent, AvgMolecularWeight, gsoap_eml2_2::eml22__MolecularWeightUom)

		/**
		 * Gets stock tank oil count
		 *
		 * @returns	The stock tank oil count.
		 */
		unsigned int getStockTankOilCount() const;

		/**
		 * Pushes a back stock tank oil
		 *
		 * @param 	uid	The UID.
		 */
		void pushBackStockTankOil(const std::string & uid);
		GETTER_AND_SETTER_FLUID_COMPONENT_COMMON_ATTRIBUTES(StockTankOil)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(StockTankOil, APIGravity, gsoap_eml2_2::eml22__APIGravityUom)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(StockTankOil, MolecularWeight, gsoap_eml2_2::eml22__MolecularWeightUom)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(StockTankOil, GrossEnergyContentPerUnitMass, gsoap_eml2_2::eml22__EnergyPerMassUom)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(StockTankOil, NetEnergyContentPerUnitMass, gsoap_eml2_2::eml22__EnergyPerMassUom)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(StockTankOil, GrossEnergyContentPerUnitVolume, gsoap_eml2_2::eml22__EnergyPerVolumeUom)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(StockTankOil, NetEnergyContentPerUnitVolume, gsoap_eml2_2::eml22__EnergyPerVolumeUom)

		/**
		 * Gets natural gas count
		 *
		 * @returns	The natural gas count.
		 */
		unsigned int getNaturalGasCount() const;

		/**
		 * Pushes a back natural gas
		 *
		 * @param 	uid	The UID.
		 */
		void pushBackNaturalGas(const std::string & uid);
		GETTER_AND_SETTER_FLUID_COMPONENT_COMMON_ATTRIBUTES(NaturalGas)
		GETTER_AND_SETTER_FLUID_COMPONENT_OPTIONAL_ATTRIBUTE(NaturalGas, GasGravity, double)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(NaturalGas, MolecularWeight, gsoap_eml2_2::eml22__MolecularWeightUom)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(NaturalGas, GrossEnergyContentPerUnitMass, gsoap_eml2_2::eml22__EnergyPerMassUom)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(NaturalGas, NetEnergyContentPerUnitMass, gsoap_eml2_2::eml22__EnergyPerMassUom)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(NaturalGas, GrossEnergyContentPerUnitVolume, gsoap_eml2_2::eml22__EnergyPerVolumeUom)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(NaturalGas, NetEnergyContentPerUnitVolume, gsoap_eml2_2::eml22__EnergyPerVolumeUom)

		/**
		 * Gets pseudo fluid component count
		 *
		 * @returns	The pseudo fluid component count.
		 */
		unsigned int getPseudoFluidComponentCount() const;

		/**
		 * Pushes a back pseudo fluid component
		 *
		 * @param 	uid 	The UID.
		 * @param 	kind	The kind.
		 */
		void pushBackPseudoFluidComponent(const std::string & uid, gsoap_eml2_2::prodml21__PseudoComponentEnum kind);
		GETTER_AND_SETTER_FLUID_COMPONENT_COMMON_ATTRIBUTES(PseudoFluidComponent)
		GETTER_AND_SETTER_FLUID_COMPONENT_OPTIONAL_ATTRIBUTE(PseudoFluidComponent, SpecificGravity, double)
		GETTER_AND_SETTER_FLUID_COMPONENT_OPTIONAL_ATTRIBUTE(PseudoFluidComponent, StartingCarbonNumber, ULONG64)
		GETTER_AND_SETTER_FLUID_COMPONENT_OPTIONAL_ATTRIBUTE(PseudoFluidComponent, EndingCarbonNumber, ULONG64)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(PseudoFluidComponent, StartingBoilingPoint, gsoap_eml2_2::eml22__ThermodynamicTemperatureUom)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(PseudoFluidComponent, EndingBoilingPoint, gsoap_eml2_2::eml22__ThermodynamicTemperatureUom)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(PseudoFluidComponent, AvgBoilingPoint, gsoap_eml2_2::eml22__ThermodynamicTemperatureUom)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(PseudoFluidComponent, AvgDensity, std::string)
		GETTER_AND_SETTER_FLUID_COMPONENT_MEASURE_ATTRIBUTE(PseudoFluidComponent, AvgMolecularWeight, gsoap_eml2_2::eml22__MolecularWeightUom)
		
		/**
		 * Gets model count
		 *
		 * @returns	The model count.
		 */
		unsigned int getModelCount() const;

		/**
		 * Pushes a back model
		 *
		 * @param 	uid	The UID. If empty, it will be set to its index in this Fluid Characterization
		 */
		void pushBackModel(const std::string & uid = "");
		
		GETTER_SETTER_OPTIONAL_ATTRIBUTE_IN_VECTOR(gsoap_eml2_2::prodml21__FluidCharacterization, gsoapProxy2_2, FluidCharacterizationModel, Name, std::string)
		GETTER_SETTER_OPTIONAL_ATTRIBUTE_IN_VECTOR(gsoap_eml2_2::prodml21__FluidCharacterization, gsoapProxy2_2, FluidCharacterizationModel, Remark, std::string)
		GETTER_SETTER_MEASURE_OPTIONAL_ATTRIBUTE_IN_VECTOR(gsoap_eml2_2::prodml21__FluidCharacterization, gsoapProxy2_2, FluidCharacterizationModel, ReferenceTemperature, gsoap_eml2_2::eml22__ThermodynamicTemperatureUom)
		GETTER_SETTER_MEASURE_OPTIONAL_ATTRIBUTE_IN_VECTOR(gsoap_eml2_2::prodml21__FluidCharacterization, gsoapProxy2_2, FluidCharacterizationModel, ReferenceStockTankTemperature, gsoap_eml2_2::eml22__ThermodynamicTemperatureUom)
		
		/**
		 * Gets the table format count
		 *
		 * @returns	The table format count.
		 */
		void getTableFormatCount() const;
		
		/**
		* Pushes a table format
		*
		* @param 	uid	The UID. If empty, it will be set to its index in this Fluid Characterization
		*/
		void pushBackTableFormat(const std::string & uid = "");
		
		/**
		 * Gets the uom of a table format column
		 *
		 * @param	tableFormatUid	The uid of the table format.
		 * @param	columnIndex		The zero-based index of the column.
		 * @returns	The uom of a table format column
		 */
		std::string getTableFormatColumnUom(const std::string & tableFormatUid, unsigned int columnIndex) const;

		/**
		 * Gets the property kind of a table format column
		 *
		 * @param	tableFormatUid	The uid of the table format.
		 * @param	columnIndex		The zero-based index of the column.
		 * @returns	The property kind of a table format column
		 */
		std::string getTableFormatColumnProperty(const std::string & tableFormatUid, unsigned int columnIndex) const;
		
		/**
		* Pushes a table format colum
		*
		* @param	tableFormatIndex	Zero-based index of the table format.
		* @param 	uom					The uom associated to the values of this column
		* @param	fluidProperty		The property that this column contains
		*/
		void pushBackTableFormatColumn(unsigned int tableFormatIndex, const std::string & uom, gsoap_eml2_2::prodml21__OutputFluidProperty fluidProperty);
			
		/**
		* Pushes a table format colum
		*
		* @param	tableFormatIndex	Zero-based index of the table format.
		* @param 	uom					The uom associated to the values of this column
		* @param	fluidProperty		The non standard property name that this column contains
		*/
		void pushBackTableFormatColumn(unsigned int tableFormatIndex, const std::string & uom, const std::string & fluidProperty);
		
		/**
		 * Gets the table count
		 *
		 * @param	modelIndex		Zero-based index of the model in this fluid characterization.
		 * @returns	The table count.
		 */
		unsigned int getTableCount(unsigned int modelIndex) const;
		
		/**
		 * Gets the name of a table.
		 *
		 * @param	modelIndex		Zero-based index of the model in this fluid characterization.
		 * @param 	tableIndex		Zero-based index of the table in a model of this fluid characterization.
		 * @returns	The name of a table.
		 */
		std::string getTableName(unsigned int modelIndex, unsigned int tableIndex) const;
		
		/**
		 * Gets the uid of the table format of a table.
		 *
		 * @param	modelIndex		Zero-based index of the model in this fluid characterization.
		 * @param 	tableIndex		Zero-based index of the table in a model of this fluid characterization.
		 * @returns	The uid of the table format of a table.
		 */
		std::string getTableFormatUid(unsigned int modelIndex, unsigned int tableIndex) const;
		
		/**
		* Pushes back a table
		*
		* @param	modelIndex		Zero-based index of the model.
		* @param 	name			The name of this table.
		* @param 	tableFormatUid	The UID of the table format this table is using.The table format defines the semantic of the colums and values.
		* @param 	uid				The UID of this table. If empty, it will be set to its index in this Fluid Characterization
		*/
		void pushBackTable(unsigned int modelIndex, const std::string & name, const std::string & tableFormatUid, const std::string & uid = "");
		
		/**
		 * Gets the table row count
		 *
		 * @param	modelIndex		Zero-based index of the model in this fluid characterization.
		 * @param 	tableIndex		Zero-based index of the table in a model of this fluid characterization.
		 * @returns	The table row count.
		 */
		unsigned int getTableRowCount(unsigned int modelIndex, unsigned int tableIndex) const;

		/**
		 * Gets the content of a row of a table.
		 *
		 * @param	modelIndex		Zero-based index of the model in this fluid characterization.
		 * @param 	tableIndex		Zero-based index of the table in a model of this fluid characterization.
		 * @param 	rowIndex		Zero-based index of the row of the table in a model of this fluid characterization.
		 * @returns	The content of a row of a table.
		 */
		std::string getTableRowContent(unsigned int modelIndex, unsigned int tableIndex, unsigned int rowIndex) const;
		
		/**
		* Pushes back a row in a table of a model
		*
		* @param	modelIndex		Zero-based index of the model in this fluid characterization.
		* @param 	tableIndex		Zero-based index of the table in a model of this fluid characterization.
		* @param 	rowContent		The string containing the content of the row in the table .
		*/
		void pushBackTableRow(unsigned int modelIndex, unsigned int tableIndex, const std::string & rowContent);
	};
}

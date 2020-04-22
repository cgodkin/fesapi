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

#include "../resqml2/Grid2dRepresentation.h"

/** @brief */
namespace RESQML2_0_1_NS
{
	/** A grid 2D representation. */
	class Grid2dRepresentation final : public RESQML2_NS::Grid2dRepresentation
	{
	public:

		/**
		 * Only to be used in partial transfer context
		 *
		 * @param [in,out]	partialObject	If non-null, the partial object.
		 *
		 * @returns	A DLL_IMPORT_OR_EXPORT.
		 */
		DLL_IMPORT_OR_EXPORT Grid2dRepresentation(gsoap_resqml2_0_1::eml20__DataObjectReference* partialObject) : RESQML2_NS::Grid2dRepresentation(partialObject) {}

		/**
		 * Creates an instance of this class in a gsoap context.
		 *
		 * @param [in,out]	interp	The interpretation this representation represents.
		 * @param 		  	guid  	The guid to set to the new instance. If empty then a new guid will be
		 * 							generated.
		 * @param 		  	title 	A title for the instance to create.
		 */
		Grid2dRepresentation(RESQML2_NS::AbstractFeatureInterpretation* interp,
			const std::string & guid, const std::string & title);

		/**
		 * Creates an instance of this class by wrapping a gsoap instance.
		 *
		 * @param [in,out]	fromGsoap	If non-null, from gsoap.
		 */
		Grid2dRepresentation(gsoap_resqml2_0_1::_resqml20__Grid2dRepresentation* fromGsoap): RESQML2_NS::Grid2dRepresentation(fromGsoap) {}

		/** Destructor does nothing since the memory is managed by the gsoap context. */
		~Grid2dRepresentation() {}

		COMMON_NS::DataObjectReference getHdfProxyDor() const final;

		/**
		 * Get the number of nodes in the I direction of the lattice 2d grid
		 *
		 * @returns	The node count along i axis.
		 */
		DLL_IMPORT_OR_EXPORT ULONG64 getNodeCountAlongIAxis() const final;

		/**
		 * Get the number of nodes in the J direction of the lattice 2d grid
		 *
		 * @returns	The node count along j axis.
		 */
		DLL_IMPORT_OR_EXPORT ULONG64 getNodeCountAlongJAxis() const final;

		/**
		 * Get all the z values of a patch located at a specific index of the geometry points. Z Values
		 * are given in the local CRS.
		 *
		 * @param [in,out]	values	All the z values of the selected patch. i dimension is the quickest.
		 * 							It must be preallocated and won't be freed by this method. Its size
		 * 							must be equel to getNodeCountAlongIAxis() * getNodeCountAlongJAxis().
		 */
		DLL_IMPORT_OR_EXPORT void getZValues(double * values) const final;

		/**
		 * Get the X origin of this geometry. X coordinate is given in the local CRS.
		 *
		 * @returns	A double.NAN coordinate if something's wrong. The X origin point otherwise.
		 */
		DLL_IMPORT_OR_EXPORT double getXOrigin() const final;

		/**
		 * Get the Y origin of this geometry. Y coordinate is given in the local CRS.
		 *
		 * @returns	A double.NAN coordinate if something's wrong. The Y origin point otherwise.
		 */
		DLL_IMPORT_OR_EXPORT double getYOrigin() const final;

		/**
		 * Get the Z origin of this geometry. Z coordinate is given in the local CRS.
		 *
		 * @returns	A double.NAN coordinate if something's wrong. The Z origin point otherwise.
		 */
		DLL_IMPORT_OR_EXPORT double getZOrigin() const final;

		/**
		 * Get the X (in local crs) offset on the J axis. If the J spacing is constant, the returned
		 * offset is exactly the offset between two consecutive nodes lying on the J axis. If not, the
		 * offset length does not have any meaning. X coordinate is given in the local CRS.
		 *
		 * @returns	A double.NAN coordinate if something's wrong. The X offset point otherwise.
		 */
		DLL_IMPORT_OR_EXPORT double getXJOffset() const final;

		/**
		 * Get the Y (in local crs) offset on the J axis. If the J spacing is constant, the returned
		 * offset is exactly the offset between two consecutive nodes lying on the J axis. If not, the
		 * offset length does not have any meaning. Y coordinate is given in the local CRS.
		 *
		 * @returns	A double.NAN coordinate if something's wrong. The Y offset point otherwise.
		 */
		DLL_IMPORT_OR_EXPORT double getYJOffset() const final;

		/**
		 * Get the Z (in local crs) offset on the J axis. If the J spacing is constant, the returned
		 * offset is exactly the offset between two consecutive nodes lying on the J axis. If not, the
		 * offset length does not have any meaning. Z coordinate is given in the local CRS.
		 *
		 * @returns	A double.NAN coordinate if something's wrong. The Z offset point otherwise.
		 */
		DLL_IMPORT_OR_EXPORT double getZJOffset() const final;

		/**
		 * Get the X (in local crs) offset between two consecutive nodes lying on the I axis. X
		 * coordinate is given in the local CRS.
		 *
		 * @returns	A double.NAN coordinate if something's wrong. The X offset point otherwise.
		 */
		DLL_IMPORT_OR_EXPORT double getXIOffset() const final;

		/**
		 * Get the Y (in local crs) offset between two consecutive nodes lying on the I axis. Y
		 * coordinate is given in the local CRS.
		 *
		 * @returns	A double.NAN coordinate if something's wrong. The Y offset point otherwise.
		 */
		DLL_IMPORT_OR_EXPORT double getYIOffset() const final;

		/**
		 * Get the Z (in local crs) offset between two consecutive nodes lying on the I axis. Z
		 * coordinate is given in the local CRS.
		 *
		 * @returns	A double.NAN coordinate if something's wrong. The Z offset point otherwise.
		 */
		DLL_IMPORT_OR_EXPORT double getZIOffset() const final;

		/**
		 * Checkes wether the spacing between nodes on J dimension is constant or not.
		 *
		 * @returns	True if j spacing constant, false if not.
		 */
		DLL_IMPORT_OR_EXPORT bool isJSpacingConstant() const final;

		/**
		 * Checkes wether the spacing between nodes on I dimension is constant or not.
		 *
		 * @returns	True if i spacing constant, false if not.
		 */
		DLL_IMPORT_OR_EXPORT bool isISpacingConstant() const final;

		/**
		 * Get the constant J (fastest) spacing of this 2d grid representation.
		 *
		 * @returns	The constant spacing in the J direction of the 2d grid representation.
		 */
		DLL_IMPORT_OR_EXPORT double getJSpacing() const final;

		/**
		 * Get all the J (fastest) spacings of this 2d grid representation.
		 *
		 * @param [in,out]	jSpacings	The count of this array should be getNodeCountAlongJAxis - 1. It
		 * 								must be preallocated and won't be freed by this method.
		 */
		DLL_IMPORT_OR_EXPORT void getJSpacing(double* jSpacings) const final;

		/**
		 * Get the constant I (slowest) spacing of this 2d grid representation.
		 *
		 * @returns	The constant spacing in the I direction of the 2d grid representation.
		 */
		DLL_IMPORT_OR_EXPORT double getISpacing() const final;

		/**
		 * Get all the I (fastest) spacings of this 2d grid representation.
		 *
		 * @param [in,out]	iSpacings	The count of this array shouhd be getNodeCountAlongIAxis - 1. It
		 * 								must be preallocated and won't be freed by this method.
		 */
		DLL_IMPORT_OR_EXPORT void getISpacing(double* iSpacings) const final;

		/**
		 * Set the geometry patch for a lattice 2d grid. The set geometry is an array 2d of lattice
		 * points3d.
		 *
		 * @param 		  	numPointsInFastestDirection	Number of points in fastest directions.
		 * @param 		  	numPointsInSlowestDirection	Number of points in slowest directions.
		 * @param 		  	xOrigin					   	The origin.
		 * @param 		  	yOrigin					   	The origin.
		 * @param 		  	zOrigin					   	The origin.
		 * @param 		  	xOffsetInFastestDirection  	The offset in fastest direction.
		 * @param 		  	yOffsetInFastestDirection  	The offset in fastest direction.
		 * @param 		  	zOffsetInFastestDirection  	The offset in fastest direction.
		 * @param 		  	xOffsetInSlowestDirection  	The offset in slowest direction.
		 * @param 		  	yOffsetInSlowestDirection  	The offset in slowest direction.
		 * @param 		  	zOffsetInSlowestDirection  	The offset in slowest direction.
		 * @param 		  	spacingInFastestDirection  	The spacing in fastest direction.
		 * @param 		  	spacingInSlowestDirection  	The spacing in slowest direction.
		 * @param [in,out]	localCrs				   	(Optional) If non-null, the local crs.
		 */
		DLL_IMPORT_OR_EXPORT void setGeometryAsArray2dOfLatticePoints3d(
			unsigned int numPointsInFastestDirection, unsigned int numPointsInSlowestDirection,
			double xOrigin, double yOrigin, double zOrigin,
			double xOffsetInFastestDirection, double yOffsetInFastestDirection, double zOffsetInFastestDirection,
			double xOffsetInSlowestDirection, double yOffsetInSlowestDirection, double zOffsetInSlowestDirection,
			double spacingInFastestDirection, double spacingInSlowestDirection, RESQML2_NS::AbstractLocal3dCrs * localCrs = nullptr) final;

		/**
		 * Set the geometry patch for a lattice 2d grid. The set geometry is an array 2d of explicit Z
		 * based on an existing representation
		 *
		 * @param [in,out]	zValues						  	If non-null, the values.
		 * @param 		  	numI						  	Number of is.
		 * @param 		  	numJ						  	Number of js.
		 * @param [in,out]	proxy						  	If non-null, the proxy.
		 * @param [in,out]	supportingGrid2dRepresentation	If non-null, the supporting grid 2D
		 * 													representation.
		 * @param [in,out]	localCrs					  	(Optional) If non-null, the local crs.
		 * @param 		  	startIndexI					  	(Optional) The start index i.
		 * @param 		  	startIndexJ					  	(Optional) The start index j.
		 * @param 		  	indexIncrementI				  	(Optional) The index increment i.
		 * @param 		  	indexIncrementJ				  	(Optional) The index increment j.
		 */
		DLL_IMPORT_OR_EXPORT void setGeometryAsArray2dOfExplicitZ(
			double * zValues,
			unsigned int numI, unsigned int numJ, EML2_NS::AbstractHdfProxy* proxy,
			RESQML2_NS::Grid2dRepresentation * supportingGrid2dRepresentation, RESQML2_NS::AbstractLocal3dCrs * localCrs = nullptr,
			unsigned int startIndexI = 0, unsigned int startIndexJ = 0,
			int indexIncrementI = 1, int indexIncrementJ = 1) final;

		/**
		 * Set the geometry patch for a lattice 2d grid. The set geometry is an array 2d of explicit Z.
		 *
		 * @param [in,out]	zValues 	If non-null, the values.
		 * @param 		  	numI		Number of is.
		 * @param 		  	numJ		Number of js.
		 * @param [in,out]	proxy   	If non-null, the proxy.
		 * @param 		  	originX 	The origin x coordinate.
		 * @param 		  	originY 	The origin y coordinate.
		 * @param 		  	originZ 	The origin z coordinate.
		 * @param 		  	offsetIX	Zero-based index of the offset.
		 * @param 		  	offsetIY	The offset iy.
		 * @param 		  	offsetIZ	The offset iz.
		 * @param 		  	spacingI	The spacing i.
		 * @param 		  	offsetJX	The offset jx.
		 * @param 		  	offsetJY	The offset jy.
		 * @param 		  	offsetJZ	The offset jz.
		 * @param 		  	spacingJ	The spacing j.
		 * @param [in,out]	localCrs	(Optional) If non-null, the local crs.
		 */
		DLL_IMPORT_OR_EXPORT void setGeometryAsArray2dOfExplicitZ(
			double * zValues,
			unsigned int numI, unsigned int numJ, EML2_NS::AbstractHdfProxy* proxy,
			double originX, double originY, double originZ,
			double offsetIX, double offsetIY, double offsetIZ, double spacingI,
			double offsetJX, double offsetJY, double offsetJZ, double spacingJ, RESQML2_NS::AbstractLocal3dCrs * localCrs = nullptr) final;

		COMMON_NS::DataObjectReference getSupportingRepresentationDor() const final;

		/**
		 * Get the index of the origin of the current geometry on the supporting representation. The
		 * index is given by means of the formula iOrigin + jOrigin*iNodeCountOnSupportingRepresentation
		 *
		 * @returns	The index origin on supporting representation.
		 */
		DLL_IMPORT_OR_EXPORT int getIndexOriginOnSupportingRepresentation() const final;

		/**
		* Get the index of the origin of the current geometry on a particular dimension of the supporting representation.
		*/
		DLL_IMPORT_OR_EXPORT int getIndexOriginOnSupportingRepresentation(unsigned int dimension) const final;

		/**
		* Get the number of nodes of the current geometry which is extracted from a particular dimension of the supporting representation.
		*/
		DLL_IMPORT_OR_EXPORT int getNodeCountOnSupportingRepresentation(unsigned int dimension) const final;

		/**
		* Get the index offset of the nodes of the current geometry on a particular dimension of the supporting representation.
		*/
		DLL_IMPORT_OR_EXPORT int getIndexOffsetOnSupportingRepresentation(unsigned int dimension) const final;

	private:

		gsoap_resqml2_0_1::resqml20__PointGeometry* getPointGeometry2_0_1(unsigned int patchIndex) const;

		/**
		 * Gets array lattice of points 3D
		 *
		 * @returns	Null if it fails, else the array lattice of points 3D.
		 */
		gsoap_resqml2_0_1::resqml20__Point3dLatticeArray* getArrayLatticeOfPoints3d() const;

		/**
		 * Try to get a Point3dFromRepresentationLatticeArray from the geometry of a patch of the
		 * representation.
		 *
		 * @param [in,out]	patch	If non-null, the patch.
		 *
		 * @returns	nullptr if the geoemtry does not contain such an information.
		 */
		gsoap_resqml2_0_1::resqml20__Point3dFromRepresentationLatticeArray* getPoint3dFromRepresentationLatticeArrayFromPointGeometryPatch(gsoap_resqml2_0_1::resqml20__PointGeometry* patch) const;

		/**
		 * Creates an array 2d of lattice points 3d.
		 *
		 * @param 		  	numPointsInFastestDirection	Number of points in fastest directions.
		 * @param 		  	numPointsInSlowestDirection	Number of points in slowest directions.
		 * @param 		  	xOrigin					   	The origin.
		 * @param 		  	yOrigin					   	The origin.
		 * @param 		  	zOrigin					   	The origin.
		 * @param 		  	xOffsetInFastestDirection  	The offset in fastest direction.
		 * @param 		  	yOffsetInFastestDirection  	The offset in fastest direction.
		 * @param 		  	zOffsetInFastestDirection  	The offset in fastest direction.
		 * @param 		  	xOffsetInSlowestDirection  	The offset in slowest direction.
		 * @param 		  	yOffsetInSlowestDirection  	The offset in slowest direction.
		 * @param 		  	zOffsetInSlowestDirection  	The offset in slowest direction.
		 * @param 		  	spacingInFastestDirection  	The spacing in fastest direction.
		 * @param 		  	spacingInSlowestDirection  	The spacing in slowest direction.
		 * @param [in,out]	localCrs				   	If non-null, the local crs.
		 *
		 * @returns	Null if it fails, else the new array 2D of lattice points 3D.
		 */
		gsoap_resqml2_0_1::resqml20__PointGeometry* createArray2dOfLatticePoints3d(
			unsigned int numPointsInFastestDirection, unsigned int numPointsInSlowestDirection,
			double xOrigin, double yOrigin, double zOrigin,
			double xOffsetInFastestDirection, double yOffsetInFastestDirection, double zOffsetInFastestDirection,
			double xOffsetInSlowestDirection, double yOffsetInSlowestDirection, double zOffsetInSlowestDirection,
			double spacingInFastestDirection, double spacingInSlowestDirection, RESQML2_NS::AbstractLocal3dCrs * localCrs);

		/**
		 * Creates a geometry for a grid 2d representation which derives from another existing grid 2d
		 * representation.
		 *
		 * @param 		  	patchIndex					Zero-based index of the patch.
		 * @param [in,out]	zValues						All the z values to add. It must be numI * numJ
		 * 												count.
		 * @param [in,out]	localCrs					The lcoal cRS where the Z values are.
		 * @param 		  	numI						Number of z values in the first dimension of the
		 * 												array to add.
		 * @param 		  	numJ						Number of z values in the second dimension of the
		 * 												array to add.
		 * @param [in,out]	proxy						The hdf proxy which indicates the hdf file where
		 * 												the values will be stored.
		 * @param [in,out]	supportingRepresentation	The lattice grid representation these Z values
		 * 												use as a support.
		 * @param 		  	startGlobalIndex			(Optional) The first global (representation)
		 * 												index of the baseLatticeGridRepresentation where a z
		 * 												value will be stored.
		 * @param 		  	indexIncrementI				(Optional) The constant index increment between
		 * 												two consecutive nodes on the first dimension of the
		 * 												baseLatticeGridRepresentation where z values will be
		 * 												stored.
		 * @param 		  	indexIncrementJ				(Optional) The constant index increment between
		 * 												two consecutive nodes on the second dimension of the
		 * 												baseLatticeGridRepresentation where z values will be
		 * 												stored.
		 *
		 * @returns	Null if it fails, else the new array 2D of explicit z coordinate.
		 */
		gsoap_resqml2_0_1::resqml20__PointGeometry* createArray2dOfExplicitZ(
			unsigned int patchIndex, double * zValues, RESQML2_NS::AbstractLocal3dCrs * localCrs,
			unsigned int numI, unsigned int numJ, EML2_NS::AbstractHdfProxy* proxy,
			RESQML2_NS::Grid2dRepresentation * supportingRepresentation,
			unsigned int startGlobalIndex = 0,
			int indexIncrementI = 1, int indexIncrementJ = 1);

		/**
		 * Push back a geometry for a grid 2d representation which defines its own support. This
		 * geoemtry does not derive from another existing grid 2d representation.
		 *
		 * @param 		  	patchIndex	Zero-based index of the patch.
		 * @param [in,out]	zValues   	All the z values to add. It must be numI * numJ count.
		 * @param [in,out]	localCrs  	The lcoal cRS where the Z values are.
		 * @param 		  	numI	  	Number of z values in the first dimension of the array to add.
		 * @param 		  	numJ	  	Number of z values in the second dimension of the array to add.
		 * @param [in,out]	proxy	  	The hdf proxy which indicates the hdf file where the values will
		 * 								be stored.
		 * @param 		  	originX   	The origin x coordinate.
		 * @param 		  	originY   	The origin y coordinate.
		 * @param 		  	originZ   	The origin z coordinate.
		 * @param 		  	offsetIX  	Zero-based index of the offset.
		 * @param 		  	offsetIY  	The offset iy.
		 * @param 		  	offsetIZ  	The offset iz.
		 * @param 		  	spacingI  	The spacing i.
		 * @param 		  	offsetJX  	The offset jx.
		 * @param 		  	offsetJY  	The offset jy.
		 * @param 		  	offsetJZ  	The offset jz.
		 * @param 		  	spacingJ  	The spacing j.
		 *
		 * @returns	Null if it fails, else the new array 2D of explicit z coordinate.
		 */
		gsoap_resqml2_0_1::resqml20__PointGeometry* createArray2dOfExplicitZ(
			unsigned int patchIndex, double * zValues, RESQML2_NS::AbstractLocal3dCrs * localCrs,
			unsigned int numI, unsigned int numJ, EML2_NS::AbstractHdfProxy* proxy,
			double originX, double originY, double originZ,
			double offsetIX, double offsetIY, double offsetIZ, double spacingI,
			double offsetJX, double offsetJY, double offsetJZ, double spacingJ);
	};
}

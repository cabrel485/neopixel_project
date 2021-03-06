/* createrepo_c - Library of routines for manipulation with repodata
 * Copyright (C) 2014  Tomas Mlcoch
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

#ifndef __C_CREATEREPOLIB_DELTARPMS_H__
#define __C_CREATEREPOLIB_DELTARPMS_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <glib.h>
#include <rpm/rpmlib.h>
#include "package.h"
#include "parsehdr.h"
#include "xml_file.h"

/** \defgroup   deltarpms    Support for deltarpms
 *  \addtogroup deltarpms
 *  @{
 */

#ifndef CR_DELTA_RPM_SUPPORT
/* #undef CR_DELTA_RPM_SUPPORT */
#endif
#define CR_DEFAULT_MAX_DELTA_RPM_SIZE   100000000

typedef struct {
    cr_Package *package;
    char *nevr;
    char *sequence;
    GStringChunk *chunk;
} cr_DeltaPackage;

typedef struct {
    char *name;
    char *arch;
    char *epoch;
    char *version;
    char *release;
    char *location_href;
    gint64 size_installed;

    char *path;
    GStringChunk *chunk;
} cr_DeltaTargetPackage;

gboolean cr_drpm_support(void);

#ifdef CR_DELTA_RPM_SUPPORT
char *
cr_drpm_create(cr_DeltaTargetPackage *old,
               cr_DeltaTargetPackage *new,
               const char *destdir,
               GError **err);

cr_DeltaPackage *
cr_deltapackage_from_drpm_base(const char *filename,
                               int changelog_limit,
                               cr_HeaderReadingFlags flags,
                               GError **err);

void
cr_deltapackage_free(cr_DeltaPackage *deltapackage);

GHashTable *
cr_deltarpms_scan_oldpackagedirs(GSList *oldpackagedirs,
                                 gint64 max_delta_rpm_size,
                                 GError **err);

cr_DeltaTargetPackage *
cr_deltatargetpackage_from_package(cr_Package *pkg,
                                   const char *path,
                                   GError **err);

cr_DeltaTargetPackage *
cr_deltatargetpackage_from_rpm(const char *path, GError **err);

void
cr_deltatargetpackage_free(cr_DeltaTargetPackage *tpkg);

gboolean
cr_deltarpms_parallel_deltas(GSList *targetpackages,
                             GHashTable *oldpackages,
                             const char *outdeltadir,
                             gint num_deltas,
                             gint workers,
                             gint64 max_delta_rpm_size,
                             gint64 max_work_size,
                             GError **err);

GSList *
cr_deltarpms_scan_targetdir(const char *path,
                            gint64 max_delta_rpm_size,
                            GError **err);

gboolean
cr_deltarpms_generate_prestodelta_file(const gchar *drpmdir,
                                       cr_XmlFile *f,
                                       cr_ChecksumType checksum_type,
                                       gint workers,
                                       const gchar *prefix_to_strip,
                                       GError **err);
#endif


/** @} */

#ifdef __cplusplus
}
#endif

#endif /* __C_CREATEREPOLIB_DELTARPMS_H__ */

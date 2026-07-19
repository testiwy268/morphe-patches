# Dualspace Premium Patches

![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/testiwy268/morphe-patches/release.yml)
![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)

> [!NOTE]
> This is a third-party patch bundle **for use with Morphe**.
> It is provided as-is for educational and personal-use purposes.

| App         | Package              | Patches                                                                              |
|-------------|----------------------|--------------------------------------------------------------------------------------|
| Dualspace   | `com.xunijun.app.gp` | Bypass purchase state check, Force premium status (ACTIVE), Unlock premium           |

<!-- PATCHES_START [EXPANDED] -->
> **[v1.0.0](https://github.com/testiwy268/morphe-patches/releases/tag/v1.0.0)**&nbsp;&nbsp;•&nbsp;&nbsp;`main`&nbsp;&nbsp;•&nbsp;&nbsp;3 patches total
<details open>
<summary>📦 com.xunijun.app.gp&nbsp;&nbsp;•&nbsp;&nbsp;3 patches</summary>
<br>

| 💊&nbsp;Patch | 📜&nbsp;Description | ⚙️&nbsp;Options |
|----------|----------------|-----------|
| [Bypass purchase state check](#bypass-purchase-state-check) | Bypasses the PURCHASED state validation in the billing handler so any purchase state is accepted as valid. |  |
| [Force premium status](#force-premium-status) | Forces all subscription status checks to return ACTIVE by patching sget-object field references in my1 class. |  |
| [Unlock premium](#unlock-premium) | Complete premium unlock for Dualspace. Bypasses purchase validation and forces ACTIVE status. |  |

</details>

<!-- PATCHES_END -->

## How do I use this thing?

Click [this deeplink](https://morphe.software/add-source?github=testiwy268/morphe-patches)
from a device with Morphe installed to automatically add the patches to Manager. Or manually
add `https://github.com/testiwy268/morphe-patches` as a remote source in Morphe Manager.

## What does the Dualspace patch do?

It forces the subscription status check to return ACTIVE, unlocking premium entitlement in
Dualspace without a purchase. It targets Dualspace `1.202-234.1.10` (tested build).

## License

Dualspace Premium Patches are licensed under the [GNU General Public License v3.0](LICENSE).


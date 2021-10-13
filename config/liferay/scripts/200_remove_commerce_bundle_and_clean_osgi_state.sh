#!/bin/bash

LIFEARY_COMMERCE_API_LPKG="${LIFERAY_HOME}/osgi/marketplace/Liferay CE Commerce - Liferay CE Commerce - API.lpkg"
LIFERAY_COMMERCE_IMPL_LPKG="${LIFERAY_HOME}/osgi/marketplace/Liferay CE Commerce - Liferay CE Commerce - Impl.lpkg"
LIFERAY_OSGI_STATE_DIR="${LIFERAY_HOME}/osgi/state/org.eclipse.osgi/"

echo "Trying to remove the Commerce LPKG (API and Impl)..."
[[ -f "$LIFEARY_COMMERCE_API_LPKG" ]] && rm -r "$LIFEARY_COMMERCE_API_LPKG" || echo "File $LIFEARY_COMMERCE_API_LPKG does not exist"
[[ -f "$LIFERAY_COMMERCE_IMPL_LPKG" ]] && rm -r "$LIFERAY_COMMERCE_IMPL_LPKG" || echo "File $LIFERAY_COMMERCE_IMPL_LPKG does not exist"
echo "Trying to remove the Commerce LPKG (API and Impl)...[END]"

echo "Trying to remove the OSGi State directory (${LIFERAY_HOME}/osgi/state/org.eclipse.osgi/)..."
rm -r "$LIFERAY_OSGI_STATE_DIR"
echo "Trying to remove the OSGi State directory (${LIFERAY_HOME}/osgi/state/org.eclipse.osgi/)...[END]"

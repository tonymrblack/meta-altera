FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-1.0:"

PRINC := "${@int(PRINC) + 1}"

do_install_append() {
echo "dcdc:2345:respawn:${base_sbindir}/monitorcg" >> ${D}${sysconfdir}/inittab
#echo "mlcd:2345:respawn:${base_sbindir}/minerlcd" >> ${D}${sysconfdir}/inittab
#echo "ddos:2345:respawn:${base_sbindir}/d-ddos-m.sh" >> ${D}${sysconfdir}/inittab
#echo "moni:2345:respawn:${base_sbindir}/miner-m.sh" >> ${D}${sysconfdir}/inittab
echo "cphy:2345:once:${base_sbindir}/check_phy.sh" >> ${D}${sysconfdir}/inittab
echo "rrst:2345:once:${base_sbindir}/reset.sh" >> ${D}${sysconfdir}/inittab
}


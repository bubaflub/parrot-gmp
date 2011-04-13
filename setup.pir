#!/usr/bin/env parrot

=head1 NAME

setup.pir - build and test parrot-gmp

=head1 USAGE

    $ parrot setup.pir build
    $ parrot setup.pir test

=cut

.sub 'main' :main
    .param pmc args
    $S0 = shift args
    load_bytecode 'distutils.pbc'
    .local pmc config
    config = get_config()

    $P0 = new 'Hash'
    $P0['name']                 = 'parrot-gmp'
    $P0['abstract']             = 'GMP bindings for Parrot Virtual Machine'
    $P0['authority']            = 'http://github.com/bubaflub'
    $P0['description']          = 'GMP bindings for Parrot Virtual Machine'
    $P1 = split ',', 'javascript node'
    $P0['keywords']             = $P1
    $P0['license_type']         = 'Artistic License 2.0'
    $P0['license_uri']          = 'http://www.perlfoundation.org/artistic_license_2_0'
    $P0['copyright_holder']     = 'Robert Kuo'
    $P0['checkout_uri']         = 'git://github.com/bubaflub/parrot-gmp'
    $P0['browser_uri']          = 'http://github.com/bubaflub/parrot-gmp'
    $P0['project_uri']          = ''

    # test
    $P0['prove_exec'] = 'parrot'

    # smoke
    $P0['prove_archive'] = 'test_parrot_gmp.tar.gz'
#    $P0['smolder_url'] = 'http://smolder.parrot.org/app/projects/process_add_report/3'
#    $P0['smolder_comments'] = 'plumage'
    $S0 = get_tags(config)
    $P0['smolder_tags'] = $S0
    $P8 = new 'Hash'
    $S0 = get_submitter(config)
    $P8['Submitter'] = $S0
    $P0['smolder_extra_properties'] = $P8


    # dist
    $P7 = glob('CREDITS README TASKS TODO docs/*/*.pod')
    $P0['doc_files'] = $P7

    .tailcall setup(args :flat, $P0 :flat :named)
.end

.sub 'get_tags'
    .param pmc config
    .local string tags
    tags = config['osname']
    tags .= ", "
    $S0 = config['archname']
    tags .= $S0
    .return (tags)
.end

.sub 'get_submitter' :anon
    .param pmc config
    .local pmc env
    env = new 'Env'
    $I0 = exists env['SMOLDER_SUBMITTER']
    unless $I0 goto L1
    $S0 = env['SMOLDER_SUBMITTER']
    .return ($S0)
  L1:
    .local string me
    $I0 = exists config['win32']
    unless $I0 goto L2
    me = env['USERNAME']
    goto L3
  L2:
    me = env['LOGNAME']
  L3:
    $S0 = me . '@unknown'
    .return ($S0)
.end


# Local Variables:
#   mode: pir
#   fill-column: 100
# End:
# vim: expandtab shiftwidth=4 ft=pir:

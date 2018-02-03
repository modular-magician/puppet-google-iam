# Copyright 2017 Google Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by puppet-codegen and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

require 'spec_helper'

describe Puppet::Type.type(:giam_service_account_key).provider(:google) do
  before(:all) do
    cred = Google::FakeAuthorization.new
    Puppet::Type.type(:gauth_credential)
                .define_singleton_method(:fetch) { |_resource| cred }
  end

  it '#instances' do
    expect { described_class.instances }.to raise_error(StandardError,
                                                        /not supported/)
  end

  context 'ensure == present' do
    context 'resource exists' do
      # Ensure present: resource exists, no change
      context 'no changes == no action' do
        # Ensure present: resource exists, no change, no name
        context 'title == name' do
          # Ensure present: resource exists, no change, no name, pass
          context 'title == name (pass)' do
            before do
              allow(Time).to receive(:now).and_return(
                Time.new(2017, 1, 2, 3, 4, 5)
              )
              expect_network_get_success 1, name: 'title0'
              expect_network_get_success 2, name: 'title1'
              expect_network_get_success 3, name: 'title2'
              expect_network_get_success_service_account 1
              expect_network_get_success_service_account 2
              expect_network_get_success_service_account 3
            end

            let(:catalog) do
              apply_with_error_check(
                <<-MANIFEST
                giam_service_account { 'resource(service_account,0)':
                  ensure     => present,
                  name       => 'test name#0 data',
                  project    => 'test project#0 data',
                  credential => 'cred0',
                }

                giam_service_account { 'resource(service_account,1)':
                  ensure     => present,
                  name       => 'test name#1 data',
                  project    => 'test project#1 data',
                  credential => 'cred1',
                }

                giam_service_account { 'resource(service_account,2)':
                  ensure     => present,
                  name       => 'test name#2 data',
                  project    => 'test project#2 data',
                  credential => 'cred2',
                }

                giam_service_account_key { 'title0':
                  ensure           => present,
                  fail_if_mismatch => true,
                  key_algorithm    => 'KEY_ALG_UNSPECIFIED',
                  key_id           => 'test key_id#0 data',
                  path             => 'test path#0 data',
                  private_key_type => 'TYPE_UNSPECIFIED',
                  service_account  => 'resource(service_account,0)',
                  project          => 'test project#0 data',
                  credential       => 'cred0',
                }

                giam_service_account_key { 'title1':
                  ensure           => present,
                  fail_if_mismatch => false,
                  key_algorithm    => 'KEY_ALG_RSA_1024',
                  key_id           => 'test key_id#1 data',
                  path             => 'test path#1 data',
                  private_key_type => 'TYPE_PKCS12_FILE',
                  service_account  => 'resource(service_account,1)',
                  project          => 'test project#1 data',
                  credential       => 'cred1',
                }

                giam_service_account_key { 'title2':
                  ensure           => present,
                  fail_if_mismatch => true,
                  key_algorithm    => 'KEY_ALG_RSA_2048',
                  key_id           => 'test key_id#2 data',
                  path             => 'test path#2 data',
                  private_key_type => 'TYPE_GOOGLE_CREDENTIALS_FILE',
                  service_account  => 'resource(service_account,2)',
                  project          => 'test project#2 data',
                  credential       => 'cred2',
                }
                MANIFEST
              ).catalog
            end

            context 'Giam_service_account_key[title0]' do
              subject do
                catalog.resource('Giam_service_account_key[title0]').provider
              end

              it { is_expected.to have_attributes(name: 'title0') }
              it do
                is_expected
                  .to have_attributes(private_key_type: 'TYPE_UNSPECIFIED')
              end
              it do
                is_expected
                  .to have_attributes(key_algorithm: 'KEY_ALG_UNSPECIFIED')
              end
              it do
                is_expected
                  .to have_attributes(
                    private_key_data: 'test private_key_data#0 data'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    public_key_data: 'test public_key_data#0 data'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    valid_after_time: ::Time.parse('1991-06-17T03:09:06+00:00')
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    valid_before_time: ::Time.parse('1991-09-25T23:09:25+00:00')
                  )
              end
            end

            context 'Giam_service_account_key[title1]' do
              subject do
                catalog.resource('Giam_service_account_key[title1]').provider
              end

              it { is_expected.to have_attributes(name: 'title1') }
              it do
                is_expected
                  .to have_attributes(private_key_type: 'TYPE_PKCS12_FILE')
              end
              it do
                is_expected
                  .to have_attributes(key_algorithm: 'KEY_ALG_RSA_1024')
              end
              it do
                is_expected
                  .to have_attributes(
                    private_key_data: 'test private_key_data#1 data'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    public_key_data: 'test public_key_data#1 data'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    valid_after_time: ::Time.parse('2012-11-30T06:18:12+00:00')
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    valid_before_time: ::Time.parse('2013-06-19T22:18:50+00:00')
                  )
              end
            end

            context 'Giam_service_account_key[title2]' do
              subject do
                catalog.resource('Giam_service_account_key[title2]').provider
              end

              it { is_expected.to have_attributes(name: 'title2') }
              it do
                is_expected
                  .to have_attributes(
                    private_key_type: 'TYPE_GOOGLE_CREDENTIALS_FILE'
                  )
              end
              it do
                is_expected
                  .to have_attributes(key_algorithm: 'KEY_ALG_RSA_2048')
              end
              it do
                is_expected
                  .to have_attributes(
                    private_key_data: 'test private_key_data#2 data'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    public_key_data: 'test public_key_data#2 data'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    valid_after_time: ::Time.parse('2034-05-16T09:27:18+00:00')
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    valid_before_time: ::Time.parse('2035-03-14T21:28:16+00:00')
                  )
              end
            end
          end

          # Ensure present: resource exists, no change, no name, fail
          context 'title == name (fail)' do
            # TODO(nelsonjr): Implement new test format.
            subject { -> { raise '[placeholder] This should fail.' } }
            it { is_expected.to raise_error(RuntimeError, /placeholder/) }
          end
        end

        # Ensure present: resource exists, no change, has name
        context 'title != name' do
          # Ensure present: resource exists, no change, has name, pass
          context 'title != name (pass)' do
            before do
              allow(Time).to receive(:now).and_return(
                Time.new(2017, 1, 2, 3, 4, 5)
              )
              expect_network_get_success 1
              expect_network_get_success 2
              expect_network_get_success 3
              expect_network_get_success_service_account 1
              expect_network_get_success_service_account 2
              expect_network_get_success_service_account 3
            end

            let(:catalog) do
              apply_with_error_check(
                <<-MANIFEST
                giam_service_account { 'resource(service_account,0)':
                  ensure     => present,
                  name       => 'test name#0 data',
                  project    => 'test project#0 data',
                  credential => 'cred0',
                }

                giam_service_account { 'resource(service_account,1)':
                  ensure     => present,
                  name       => 'test name#1 data',
                  project    => 'test project#1 data',
                  credential => 'cred1',
                }

                giam_service_account { 'resource(service_account,2)':
                  ensure     => present,
                  name       => 'test name#2 data',
                  project    => 'test project#2 data',
                  credential => 'cred2',
                }

                giam_service_account_key { 'title0':
                  ensure           => present,
                  fail_if_mismatch => true,
                  key_algorithm    => 'KEY_ALG_UNSPECIFIED',
                  key_id           => 'test key_id#0 data',
                  path             => 'test path#0 data',
                  private_key_type => 'TYPE_UNSPECIFIED',
                  service_account  => 'resource(service_account,0)',
                  project          => 'test project#0 data',
                  credential       => 'cred0',
                }

                giam_service_account_key { 'title1':
                  ensure           => present,
                  fail_if_mismatch => false,
                  key_algorithm    => 'KEY_ALG_RSA_1024',
                  key_id           => 'test key_id#1 data',
                  path             => 'test path#1 data',
                  private_key_type => 'TYPE_PKCS12_FILE',
                  service_account  => 'resource(service_account,1)',
                  project          => 'test project#1 data',
                  credential       => 'cred1',
                }

                giam_service_account_key { 'title2':
                  ensure           => present,
                  fail_if_mismatch => true,
                  key_algorithm    => 'KEY_ALG_RSA_2048',
                  key_id           => 'test key_id#2 data',
                  path             => 'test path#2 data',
                  private_key_type => 'TYPE_GOOGLE_CREDENTIALS_FILE',
                  service_account  => 'resource(service_account,2)',
                  project          => 'test project#2 data',
                  credential       => 'cred2',
                }
                MANIFEST
              ).catalog
            end

            context 'Giam_service_account_key[title0]' do
              subject do
                catalog.resource('Giam_service_account_key[title0]').provider
              end

              it { is_expected.to have_attributes(name: 'test name#0 data') }
              it do
                is_expected
                  .to have_attributes(private_key_type: 'TYPE_UNSPECIFIED')
              end
              it do
                is_expected
                  .to have_attributes(key_algorithm: 'KEY_ALG_UNSPECIFIED')
              end
              it do
                is_expected
                  .to have_attributes(
                    private_key_data: 'test private_key_data#0 data'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    public_key_data: 'test public_key_data#0 data'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    valid_after_time: ::Time.parse('1991-06-17T03:09:06+00:00')
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    valid_before_time: ::Time.parse('1991-09-25T23:09:25+00:00')
                  )
              end
            end

            context 'Giam_service_account_key[title1]' do
              subject do
                catalog.resource('Giam_service_account_key[title1]').provider
              end

              it { is_expected.to have_attributes(name: 'test name#1 data') }
              it do
                is_expected
                  .to have_attributes(private_key_type: 'TYPE_PKCS12_FILE')
              end
              it do
                is_expected
                  .to have_attributes(key_algorithm: 'KEY_ALG_RSA_1024')
              end
              it do
                is_expected
                  .to have_attributes(
                    private_key_data: 'test private_key_data#1 data'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    public_key_data: 'test public_key_data#1 data'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    valid_after_time: ::Time.parse('2012-11-30T06:18:12+00:00')
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    valid_before_time: ::Time.parse('2013-06-19T22:18:50+00:00')
                  )
              end
            end

            context 'Giam_service_account_key[title2]' do
              subject do
                catalog.resource('Giam_service_account_key[title2]').provider
              end

              it { is_expected.to have_attributes(name: 'test name#2 data') }
              it do
                is_expected
                  .to have_attributes(
                    private_key_type: 'TYPE_GOOGLE_CREDENTIALS_FILE'
                  )
              end
              it do
                is_expected
                  .to have_attributes(key_algorithm: 'KEY_ALG_RSA_2048')
              end
              it do
                is_expected
                  .to have_attributes(
                    private_key_data: 'test private_key_data#2 data'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    public_key_data: 'test public_key_data#2 data'
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    valid_after_time: ::Time.parse('2034-05-16T09:27:18+00:00')
                  )
              end
              it do
                is_expected
                  .to have_attributes(
                    valid_before_time: ::Time.parse('2035-03-14T21:28:16+00:00')
                  )
              end
            end
          end

          # Ensure present: resource exists, no change, has name, fail
          context 'title != name (fail)' do
            # TODO(nelsonjr): Implement new test format.
            subject { -> { raise '[placeholder] This should fail.' } }
            it { is_expected.to raise_error(RuntimeError, /placeholder/) }
          end
        end
      end

      # Ensure present: resource exists, changes
      context 'changes == action' do
        # Ensure present: resource exists, changes, no name
        context 'title == name' do
          # Ensure present: resource exists, changes, no name, pass
          context 'title == name (pass)' do
            # TODO(nelsonjr): Implement new test format.
          end

          # Ensure present: resource exists, changes, no name, fail
          context 'title == name (fail)' do
            # TODO(nelsonjr): Implement new test format.
            subject { -> { raise '[placeholder] This should fail.' } }
            it { is_expected.to raise_error(RuntimeError, /placeholder/) }
          end
        end

        # Ensure present: resource exists, changes, has name
        context 'title != name' do
          # Ensure present: resource exists, changes, has name, pass
          context 'title != name (pass)' do
            # TODO(nelsonjr): Implement new test format.
          end

          # Ensure present: resource exists, changes, has name, fail
          context 'title != name (fail)' do
            # TODO(nelsonjr): Implement new test format.
            subject { -> { raise '[placeholder] This should fail.' } }
            it { is_expected.to raise_error(RuntimeError, /placeholder/) }
          end
        end
      end
    end

    context 'resource missing' do
      # Ensure present: resource missing, ignore, no name
      context 'title == name' do
        # Ensure present: resource missing, ignore, no name, pass
        context 'title == name (pass)' do
          before(:each) do
            expect_network_get_failed 1, name: 'title0'
            expect_network_create \
              1,
              {
                'privateKeyType' => 'TYPE_UNSPECIFIED',
                'keyAlgorithm' => 'KEY_ALG_UNSPECIFIED'
              },
              name: 'title0'
            expect_network_get_success_service_account 1
          end

          subject do
            apply_with_error_check(
              <<-MANIFEST
              giam_service_account { 'resource(service_account,0)':
                ensure     => present,
                name       => 'test name#0 data',
                project    => 'test project#0 data',
                credential => 'cred0',
              }

              giam_service_account_key { 'title0':
                ensure           => present,
                fail_if_mismatch => true,
                key_algorithm    => 'KEY_ALG_UNSPECIFIED',
                key_id           => 'test key_id#0 data',
                path             => 'test path#0 data',
                private_key_type => 'TYPE_UNSPECIFIED',
                service_account  => 'resource(service_account,0)',
                project          => 'test project#0 data',
                credential       => 'cred0',
              }
              MANIFEST
            ).catalog.resource('Giam_service_account_key[title0]').provider
              .ensure
          end

          it { is_expected.to eq :present }
        end

        # Ensure present: resource missing, ignore, no name, fail
        context 'title == name (fail)' do
          # TODO(nelsonjr): Implement new test format.
          subject { -> { raise '[placeholder] This should fail.' } }
          it { is_expected.to raise_error(RuntimeError, /placeholder/) }
        end
      end

      # Ensure present: resource missing, ignore, has name
      context 'title != name' do
        # Ensure present: resource missing, ignore, has name, pass
        context 'title != name (pass)' do
          before(:each) do
            expect_network_get_failed 1
            expect_network_create \
              1,
              'privateKeyType' => 'TYPE_UNSPECIFIED',
              'keyAlgorithm' => 'KEY_ALG_UNSPECIFIED'
            expect_network_get_success_service_account 1
          end

          subject do
            apply_with_error_check(
              <<-MANIFEST
              giam_service_account { 'resource(service_account,0)':
                ensure     => present,
                name       => 'test name#0 data',
                project    => 'test project#0 data',
                credential => 'cred0',
              }

              giam_service_account_key { 'title0':
                ensure           => present,
                fail_if_mismatch => true,
                key_algorithm    => 'KEY_ALG_UNSPECIFIED',
                key_id           => 'test key_id#0 data',
                path             => 'test path#0 data',
                private_key_type => 'TYPE_UNSPECIFIED',
                service_account  => 'resource(service_account,0)',
                project          => 'test project#0 data',
                credential       => 'cred0',
              }
              MANIFEST
            ).catalog.resource('Giam_service_account_key[title0]').provider
              .ensure
          end

          it { is_expected.to eq :present }
        end

        # Ensure present: resource missing, ignore, has name, fail
        context 'title != name (fail)' do
          # TODO(nelsonjr): Implement new test format.
          subject { -> { raise '[placeholder] This should fail.' } }
          it { is_expected.to raise_error(RuntimeError, /placeholder/) }
        end
      end
    end
  end

  context 'ensure == absent' do
    context 'resource missing' do
      # Ensure absent: resource missing, ignore, no name
      context 'title == name' do
        # Ensure absent: resource missing, ignore, no name, pass
        context 'title == name (pass)' do
          before(:each) do
            expect_network_get_failed 1, name: 'title0'
          end

          subject do
            apply_with_error_check(
              <<-MANIFEST
              giam_service_account_key { 'title0':
                ensure     => absent,
                project    => 'test project#0 data',
                credential => 'cred0',
              }
              MANIFEST
            ).catalog.resource('Giam_service_account_key[title0]')
              .provider.ensure
          end

          it { is_expected.to eq :absent }
        end

        # Ensure absent: resource missing, ignore, no name, fail
        context 'title == name (fail)' do
          # TODO(nelsonjr): Implement new test format.
          subject { -> { raise '[placeholder] This should fail.' } }
          it { is_expected.to raise_error(RuntimeError, /placeholder/) }
        end
      end

      # Ensure absent: resource missing, ignore, has name
      context 'title != name' do
        # Ensure absent: resource missing, ignore, has name, pass
        context 'title != name (pass)' do
          before(:each) do
            expect_network_get_failed 1
          end

          subject do
            apply_with_error_check(
              <<-MANIFEST
              giam_service_account_key { 'title0':
                ensure     => absent,
                project    => 'test project#0 data',
                credential => 'cred0',
              }
              MANIFEST
            ).catalog.resource('Giam_service_account_key[title0]')
              .provider.ensure
          end

          it { is_expected.to eq :absent }
        end

        # Ensure absent: resource missing, ignore, has name, fail
        context 'title != name (fail)' do
          # TODO(nelsonjr): Implement new test format.
          subject { -> { raise '[placeholder] This should fail.' } }
          it { is_expected.to raise_error(RuntimeError, /placeholder/) }
        end
      end
    end

    context 'resource exists' do
      # Ensure absent: resource exists, ignore, no name
      context 'title == name' do
        # Ensure absent: resource exists, ignore, no name, pass
        context 'title == name (pass)' do
          before(:each) do
            expect_network_get_success 1, name: 'title0'
            expect_network_delete 1, 'title0'
          end

          subject do
            apply_with_error_check(
              <<-MANIFEST
              giam_service_account_key { 'title0':
                ensure     => absent,
                project    => 'test project#0 data',
                credential => 'cred0',
              }
              MANIFEST
            ).catalog.resource('Giam_service_account_key[title0]')
              .provider.ensure
          end

          it { is_expected.to eq :absent }
        end

        # Ensure absent: resource exists, ignore, no name, fail
        context 'title == name (fail)' do
          # TODO(nelsonjr): Implement new test format.
          subject { -> { raise '[placeholder] This should fail.' } }
          it { is_expected.to raise_error(RuntimeError, /placeholder/) }
        end
      end

      # Ensure absent: resource exists, ignore, has name
      context 'title != name' do
        # Ensure absent: resource exists, ignore, has name, pass
        context 'title != name (pass)' do
          before(:each) do
            expect_network_get_success 1
            expect_network_delete 1
          end

          subject do
            apply_with_error_check(
              <<-MANIFEST
              giam_service_account_key { 'title0':
                ensure     => absent,
                project    => 'test project#0 data',
                credential => 'cred0',
              }
              MANIFEST
            ).catalog.resource('Giam_service_account_key[title0]')
              .provider.ensure
          end

          it { is_expected.to eq :absent }
        end

        # Ensure absent: resource exists, ignore, has name, fail
        context 'title != name (fail)' do
          # TODO(nelsonjr): Implement new test format.
          subject { -> { raise '[placeholder] This should fail.' } }
          it { is_expected.to raise_error(RuntimeError, /placeholder/) }
        end
      end
    end
  end

  context '#flush' do
    subject do
      Puppet::Type.type(:giam_service_account_key).new(
        ensure: :present,
        name: 'my-name'
      ).provider
    end
    context 'no-op' do
      it { subject.flush }
    end
    context 'modified object' do
      before do
        subject.dirty :some_property, 'current', 'newvalue'
      end
      context 'no-op if created' do
        before { subject.instance_variable_set(:@created, true) }
        it { expect { subject.flush }.not_to raise_error }
      end
      context 'no-op if deleted' do
        before { subject.instance_variable_set(:@deleted, true) }
        it { expect { subject.flush }.not_to raise_error }
      end
    end
  end

  private

  def expect_network_get_success(id, data = {})
    id_data = data.fetch(:name, '').include?('title') ? 'title' : 'name'
    body = load_network_result("success#{id}~#{id_data}.yaml").to_json

    request = double('request')
    allow(request).to receive(:send).and_return(http_success(body))

    debug_network "!! GET #{self_link(uri_data(id).merge(data))}"
    expect(Google::Iam::Network::Get).to receive(:new)
      .with(self_link(uri_data(id).merge(data)),
            instance_of(Google::FakeAuthorization)) do |args|
      debug_network ">> GET #{args}"
      request
    end
  end

  def http_success(body)
    response = Net::HTTPOK.new(1.0, 200, 'OK')
    response.body = body
    response.instance_variable_set(:@read, true)
    response
  end

  def expect_network_get_failed(id, data = {})
    request = double('request')
    allow(request).to receive(:send).and_return(http_failed_object_missing)

    debug_network "!! #{self_link(uri_data(id).merge(data))}"
    expect(Google::Iam::Network::Get).to receive(:new)
      .with(self_link(uri_data(id).merge(data)),
            instance_of(Google::FakeAuthorization)) do |args|
      debug_network ">> GET [failed] #{args}"
      request
    end
  end

  def http_failed_object_missing
    Net::HTTPNotFound.new(1.0, 404, 'Not Found')
  end

  def expect_network_create(id, expected_body, data = {})
    merged_uri = uri_data(id).merge(data)
    body = {}.to_json

    # Remove refs that are also part of the body
    expected_body = Hash[expected_body.map do |k, v|
      [k.is_a?(Symbol) ? k.id2name : k, v]
    end]

    request = double('request')
    allow(request).to receive(:send).and_return(http_success(body))

    debug_network "!! POST #{collection(merged_uri)}"
    expect(Google::Iam::Network::Post).to receive(:new)
      .with(collection(merged_uri), instance_of(Google::FakeAuthorization),
            'application/json', expected_body.to_json) do |args|
      debug_network ">> POST #{args} = body(#{body})"
      request
    end
  end

  def expect_network_delete(id, name = nil, data = {})
    delete_data = uri_data(id).merge(data)
    delete_data[:name] = name unless name.nil?
    body = {}.to_json

    request = double('request')
    allow(request).to receive(:send).and_return(http_success(body))

    debug_network "!! DELETE #{self_link(delete_data)}"
    expect(Google::Iam::Network::Delete).to receive(:new)
      .with(self_link(delete_data),
            instance_of(Google::FakeAuthorization)) do |args|
      debug_network ">> DELETE #{args}"
      request
    end
  end

  def load_network_result(file)
    results = File.join(File.dirname(__FILE__), 'data', 'network',
                        'giam_service_account_key', file)
    debug("Loading result file: #{results}")
    raise "Network result data file #{results}" unless File.exist?(results)
    data = YAML.safe_load(File.read(results))
    raise "Invalid network results #{results}" unless data.class <= Hash
    data
  end

  def expect_network_get_success_service_account(id, data = {})
    id_data = data.fetch(:name, '').include?('title') ? 'title' : 'name'
    body = load_network_result_service_account("success#{id}~" \
                                                           "#{id_data}.yaml")
           .to_json
    uri = uri_data_service_account(id).merge(data)

    request = double('request')
    allow(request).to receive(:send).and_return(http_success(body))

    debug_network "!! GET #{uri}"
    expect(Google::Iam::Network::Get).to receive(:new)
      .with(self_link_service_account(uri),
            instance_of(Google::FakeAuthorization)) do |args|
      debug_network ">> GET #{args}"
      request
    end
  end

  def load_network_result_service_account(file)
    results = File.join(File.dirname(__FILE__), 'data', 'network',
                        'giam_service_account', file)
    raise "Network result data file #{results}" unless File.exist?(results)
    data = YAML.safe_load(File.read(results))
    raise "Invalid network results #{results}" unless data.class <= Hash
    data
  end

  # Creates variable test data to comply with self_link URI parameters
  # Only used for giam_service_account objects
  def uri_data_service_account(id)
    {
      project: GoogleTests::Constants::SA_PROJECT_DATA[(id - 1) \
        % GoogleTests::Constants::SA_PROJECT_DATA.size],
      name: GoogleTests::Constants::SA_NAME_DATA[(id - 1) \
        % GoogleTests::Constants::SA_NAME_DATA.size]
    }
  end

  def self_link_service_account(data)
    URI.join(
      'https://iam.googleapis.com/v1/',
      expand_variables_service_account(
        'projects/{{project}}/serviceAccounts/{{name}}',
        data
      )
    )
  end

  def debug(message)
    puts(message) if ENV['RSPEC_DEBUG']
  end

  def debug_network(message)
    puts("Network #{message}") \
      if ENV['RSPEC_DEBUG'] || ENV['RSPEC_HTTP_VERBOSE']
  end

  def expand_variables_service_account(template, data, ext_dat = {})
    Puppet::Type.type(:giam_service_account).provider(:google)
                .expand_variables(template, data, ext_dat)
  end

  def create_type(id)
    Puppet::Type.type(:giam_service_account_key).new(
      ensure: :present,
      title: "title#{id - 1}",
      credential: "cred#{id - 1}",
      project: GoogleTests::Constants::SAK_PROJECT_DATA[(id - 1) \
        % GoogleTests::Constants::SAK_PROJECT_DATA.size],
      service_account:
        GoogleTests::Constants::SAK_SERVICE_ACCOUNT_DATA[(id - 1) \
          % GoogleTests::Constants::SAK_SERVICE_ACCOUNT_DATA.size],
      name: GoogleTests::Constants::SAK_NAME_DATA[(id - 1) \
        % GoogleTests::Constants::SAK_NAME_DATA.size]
    )
  end

  def expand_variables(template, data, extra_data = {})
    Puppet::Type.type(:giam_service_account_key).provider(:google)
                .expand_variables(template, data, extra_data)
  end

  def collection(data)
    URI.join(
      'https://iam.googleapis.com/v1/',
      expand_variables(
        'projects/{{project}}/serviceAccounts/{{service_account}}/keys',
        data
      )
    )
  end

  def self_link(data)
    URI.join(
      'https://iam.googleapis.com/v1/',
      expand_variables(
        'projects/{{project}}/serviceAccounts',
        '{{service_account}}/keys/{{name}}',
        data
      )
    )
  end

  # Creates variable test data to comply with self_link URI parameters
  def uri_data(id)
    {
      project: GoogleTests::Constants::SAK_PROJECT_DATA[(id - 1) \
        % GoogleTests::Constants::SAK_PROJECT_DATA.size],
      service_account:
        GoogleTests::Constants::SAK_SERVICE_ACCOUNT_DATA[(id - 1) \
          % GoogleTests::Constants::SAK_SERVICE_ACCOUNT_DATA.size],
      name: GoogleTests::Constants::SAK_NAME_DATA[(id - 1) \
        % GoogleTests::Constants::SAK_NAME_DATA.size]
    }
  end
end
